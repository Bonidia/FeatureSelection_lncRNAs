#!/usr/bin/perl

use strict;
use warnings; 

use Bio::DB::Fasta;

my $fasta = $ARGV[0];
my $txcds_file = $ARGV[1];

if (!defined $fasta || !defined $txcds_file) {
  print STDERR "$0 <fasta> <txcds table>\n";
  exit(-1);
}


print << 'EOF';
@relation normalização_sequencias

@attribute AGCGGA numeric
@attribute GGGCTA numeric
@attribute GTCGTC numeric
@attribute score numeric
@attribute cdsSizes numeric
@attribute classes {lncRNA,mRNA}
 

@data
EOF



my $db = Bio::DB::Fasta->new ("$fasta");
open (TABLE, "<$txcds_file") or die "Nao consegui abrir $txcds_file: $!\n";
while (<TABLE>) {
  chomp;
  my ($id, $start, $end, $name, $dot, $score, @others) =   split (/\t/, $_);
  my %feature;
  my $entry = $db->get_Seq_by_id($id);
  my $seqstr = uc($entry->seq);
  $seqstr =~ s/U/T/g;
  $seqstr =~ s/-//g;
  $seqstr =~ s/N//g;
  my $nucref = countKmer($seqstr, 1);
  my $diref = countKmer($seqstr, 2);
  my $triref = countKmer($seqstr, 3);
  my $fourref = countKmer($seqstr, 4);	
  my $fiveref = countKmer($seqstr, 5);
  my $sixref = countKmer($seqstr, 6);

$feature{$id}{AGCGGA} = frequence($sixref->{"AGCGGA"},$sixref->{total});
$feature{$id}{GGGCTA} = frequence($sixref->{"GGGCTA"},$sixref->{total});
$feature{$id}{GTCGTC} = frequence($sixref->{"GTCGTC"},$sixref->{total});
$feature{$id}{score} = $score;
$feature{$id}{start} = $start;
$feature{$id}{stop} = $end;
$feature{$id}{size} = $end - $start + 1;


print $feature{$id}{AGCGGA}." , "; 
print $feature{$id}{GGGCTA}." , "; 
print $feature{$id}{GTCGTC}." , ";
print $feature{$id}{score}." , "; 
print $feature{$id}{size}." , "; 
print "?\n";



}
close (TABLE);




sub countKmer {
  my $seqstr = shift;
  my $k = shift;
  my $total = 0;
  my %kmer;
  
  for (my $i = 0; $i < length($seqstr) - $k + 1; $i++) {
    my $s = substr ($seqstr, $i, $k);
    $kmer{$s}++;
    $total ++;
  }
  $kmer{total} = $total;
  return \%kmer;
}


sub frequence {
  my $x = shift;
  my $total = shift;
  if (defined $x) {
    return ($x)/$total;
  }
  return 0.0;
}
