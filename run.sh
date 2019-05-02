#!/bin/bash
###################################################
# Paper: Feature Selection of Long Non-Coding RNAs: A Metaheuristic Approach - Script to predict plants lncRNAs
# Created by: Robson P. Bonidia
###################################################


readFasta(){
	echo "Input File (fasta, (e.g., test.fasta)): "
	read fasta
	if [[ -f "$fasta" ]]
	then
		echo "loading Fasta File"
		echo "Ready"
	else
		echo "File not found"
		readFasta
	fi
}


menu() {
	parameter=0
	while true $parameter != 0
	do
		rm -rf $fasta".index"
		rm -rf ORF.cds
		echo "================================================"
		echo "Script to predict plants lncRNAs"
		echo "Created by: Robson P. Bonidia"
		echo "================================================"
		echo ""
		echo "To Classify with features chosen by the Metaheuristic:"
		echo ""
		echo "1 - Genetic Algorithm (M1-GA)"
		echo""
		echo "2 - Evolutionary Algorithm (M2-EA)"
		echo ""
		echo "3 - Artificial Bee Colony (M3-ABC)"
		echo ""
		echo "4 - Ant Colony Optimization (M4-ACO)"
		echo""
		echo "5 - Particle Swarm Optimization (M5-PSO)"
		echo""
		echo "6 - Exit"
		echo ""
		echo "================================================"
		echo "Option: "
		read parameter
		echo "================================================"

		case $parameter in
			1) 
				echo "Informed Option ($parameter)"
				readFasta
				echo "================================================"
				./Prerequisite/txCdsPredict/txCdsPredict $fasta ORF.cds
				current_time=$(date "+%Y%m%d%H%M%S")
				echo "Feature Extraction - See Predictions/$current_time-features.arff"
				echo "================================================"
				perl M1-GA/featureextraction.pl $fasta ORF.cds >> Predictions/$current_time-features.arff
				java -Xmx4G -cp Prerequisite/weka/weka.jar weka.classifiers.trees.REPTree -l M1-GA/ga.model -T Predictions/$current_time-features.arff -p 0 >> Predictions/$current_time-predictions.txt
				echo "Successful Prediction - See Predictions/$current_time-predictions.txt" 
				echo "================================================"
				;;
			2) 
				echo "Informed Option ($parameter)"
				readFasta
				echo "================================================"
				./Prerequisite/txCdsPredict/txCdsPredict $fasta ORF.cds
				current_time=$(date "+%Y%m%d%H%M%S")
				echo "Feature Extraction - See Predictions/$current_time-features.arff"
				echo "================================================"
				perl M2-EA/featureextraction.pl $fasta ORF.cds >> Predictions/$current_time-features.arff
				java -Xmx4G -cp Prerequisite/weka/weka.jar weka.classifiers.trees.REPTree -l M2-EA/ea.model -T Predictions/$current_time-features.arff -p 0 >> Predictions/$current_time-predictions.txt
				echo "Successful Prediction - See Predictions/$current_time-predictions.txt" 
				echo "================================================"
				;;
			3)
				echo "Informed Option ($parameter)"
				readFasta
				echo "================================================"
				./Prerequisite/txCdsPredict/txCdsPredict $fasta ORF.cds
				current_time=$(date "+%Y%m%d%H%M%S")
				echo "Feature Extraction - See Predictions/$current_time-features.arff"
				echo "================================================"
				perl M3-ABC/featureextraction.pl $fasta ORF.cds >> Predictions/$current_time-features.arff
				java -Xmx4G -cp Prerequisite/weka/weka.jar weka.classifiers.trees.REPTree -l M3-ABC/abc.model -T Predictions/$current_time-features.arff -p 0 >> Predictions/$current_time-predictions.txt
				echo "Successful Prediction - See Predictions/$current_time-predictions.txt" 
				echo "================================================"
				;;
			4)
				echo "Informed Option ($parameter)"
				readFasta
				echo "================================================"
				./Prerequisite/txCdsPredict/txCdsPredict $fasta ORF.cds
				current_time=$(date "+%Y%m%d%H%M%S")
				echo "Feature Extraction - See Predictions/$current_time-features.arff"
				echo "================================================"
				perl M4-ACO/featureextraction.pl $fasta ORF.cds >> Predictions/$current_time-features.arff
				java -Xmx4G -cp Prerequisite/weka/weka.jar weka.classifiers.trees.REPTree -l M4-ACO/aco.model -T Predictions/$current_time-features.arff -p 0 >> Predictions/$current_time-predictions.txt
				echo "Successful Prediction - See Predictions/$current_time-predictions.txt" 
				echo "================================================"
				;;
			5) 
				echo "Informed Option ($parameter)"
				readFasta
				echo "================================================"
				./Prerequisite/txCdsPredict/txCdsPredict $fasta ORF.cds
				current_time=$(date "+%Y%m%d%H%M%S")
				echo "Feature Extraction - See Predictions/$current_time-features.arff"
				echo "================================================"
				perl M5-PSO/featureextraction.pl $fasta ORF.cds >> Predictions/$current_time-features.arff
				java -Xmx4G -cp Prerequisite/weka/weka.jar weka.classifiers.trees.REPTree -l M5-PSO/pso.model -T Predictions/$current_time-features.arff -p 0 >> Predictions/$current_time-predictions.txt
				echo "Successful Prediction - See Predictions/$current_time-predictions.txt" 
				echo "================================================"
				;;
			6) 
				echo "Informed Option ($parameter)"
				exit
				;;
			*) 
				echo "Informed Option ($parameter)"
				echo "Opcao Invalida!" ;;
		esac
	done
	}


####calling function######
menu 
##########################