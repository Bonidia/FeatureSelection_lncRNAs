# Selecting the Most Relevant Features for the Identification of Long Non-Coding RNAs in Plants

Due to a large number of features in bioinformatics data, and its effect on predictive performance, there is an increasing need for tools able to select the most relevant features. For Long non-coding RNAs (lncRNAs) data, key regulators of several biological processes and diseases, many researchers have reported the harmful influence of the high amount of input features. Although there are many feature selection techniques, most of them select the attributes independently, not considering how they related to each other. In this paper, we propose a metaheuristic approach for feature selection of Plants lncRNAs that take this relation into account. For such, we investigate the use of two widely studied metaheuristic algorithms, such as ($\mu + \lambda$)EA and Ant Colony Optimization. Thus, we build a training and test set of transcript data from 13 plant species (*Arabidopsis*, *Cucumis*, *Glycine*, *Populus*, *Oryza*, *Amborella, Brachypodium, Citrus, Manihot, Ricinus, Solanum, Sorghum,* and *Zea*), divided into lncRNA samples and protein-coding genes (mRNA). The proposed approach was compared with known techniques for classification of lncRNAs data (RNAplonc, CPC, CPC2, CNCI, PLEK). The experimental and statistical results demonstrated the metaheuristics efficiency for dimensionality reduction in the feature selection problem of lncRNAs, providing competitive classification performance.

## Authors

* Robson Parmezan Bonidia; Tatianne da Costa Negri; Wonder Alexandre Luz Alves; André Yoshiaki Kashiwabara; Douglas Silva Domingues; André Carlos Ponce de Leon Ferreira de Carvalho; Alexandre Rossi Paschoal; Danilo Sipoli Sanches;

* **Correspondence:** robservidor@gmail.com and danilosanches@utfpr.edu.br


## Publication

Bonidia, R. P., de Leon Ferreira, A. C. P., Paschoal, A. R., & Sanches, D. S. (2019, October). Selecting the Most Relevant Features for the Identification of Long Non-Coding RNAs in Plants. In 2019 8th Brazilian Conference on Intelligent Systems (BRACIS) (pp. 539-544). IEEE.

## List of files

 - **Datasets:** Fasta and Arff files used in our research;

 - **Examples:** Test Files

 - **M1-GA, M2-EA, M3-ABC, M4-ACO, M5-PSO:** Models and Results;

 - **Prediction:** This folder contains the predictions;

 - **Prerequisites:** Weka (Version 3.8) and txCdsPredict;

 - **README:** Documentation;

 - **run:** Main File - Shell Script.


## System Requirements

- Linux operating system - Debian or Ubuntu;

- Perl and BioPerl - [[1]](https://bioperl.org/);

- Weka - [[2]](https://www.cs.waikato.ac.nz/~ml/weka/);

- txCdsPredict - [[3]](https://github.com/ENCODE-DCC/kentUtils)[[4]](https://recordnotfound.com/kentUtils-ENCODE-DCC-120139).


## Installing required packages

**Perl**

```sh

$ sudo apt-get update

$ sudo apt-get install bioperl

```

**Weka**

```sh

$ sudo apt-get update

$ sudo apt-get install default-jre

```

**txCdsPredict**

```sh

$ sudo apt-get update

$ sudo apt-get install gcc

$ sudo apt-get install git libssl-dev openssl

$ sudo apt-get install mysql-server mysql-client

or

$ sudo apt-get install mariadb-server mariadb-client

```

Depending upon the version of your Linux/Debian/Ubuntu operating system, the specific version of packages you need may be different than this example.


## Installing our tool

```sh

$ git clone https://github.com/Bonidia/FeatureSelection_lncRNAs.git script_lncRNAs

Changing security permissions: $ sudo chmod -R 755 script_lncRNAs

```

## Usange and Examples

```sh

Access folder: $ cd script_lncRNAs
 
To run the tool: $ ./run.sh

Choose a model and start classifying lncRNAs.

```

## Screenshot

![y](https://github.com/Bonidia/FeatureSelection_lncRNAs/blob/master/Example/Screenshot.png)

## About

If you use this code in a scientific publication, we would appreciate citations to the following paper:

Bonidia, R. P., de Leon Ferreira, A. C. P., Paschoal, A. R., & Sanches, D. S. (2019, October). Selecting the Most Relevant Features for the Identification of Long Non-Coding RNAs in Plants. In 2019 8th Brazilian Conference on Intelligent Systems (BRACIS) (pp. 539-544). IEEE.
