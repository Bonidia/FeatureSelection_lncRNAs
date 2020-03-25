# Feature Selection of Biological Sequences: A Case Study with Metaheuristic Models in Long Non-Coding RNAs

Long non-coding RNAs (lncRNAs) are key regulators of several biological processes and diseases. Therefore, supervised learning models in numerous transcript datasets are being used to identify this enigmatic RNA class. Nevertheless, Before machine learning algorithms are applied to RNA data, relevant features, able to describe the main aspects of the data, must be extracted from the original data. As many of these features can be redundant or irrelevant, the predictive performance of the algorithms is usually favored by the selection of the best set of features. Despite its relevance, there is a lack of works investigating feature selection of lncRNAs, especially in plants. Considering this, we want to investigate the following hypothesis: **Metaheuristics can select a subset of predictive features able to improve the predictive performance of a classification model, when compared with the use of all original features, in the identification of lncRNAs**. We evaluate our hypothesis by applying 5 metaheuristics (Genetic Algorithms, Evolutionary Algorithms, Artificial Bee Colony, Ant Colony Optimization, and Particle Swarm Optimization) for feature selection in datasets with extracted features from different plant species.

To answer our hypothesis, we created a training set of transcript data from 5 plant species. For each dataset, each transcript was labeled as either lncRNA or protein-coding genes (mRNA). We extracted from each transcript, in each dataset, a feature set, based on sequence structures using GC content, k-mer (1-6), sequence length, Open Reading Frame. The 5 metaheuristics were applied to the training dataset, selecting a features subset. This subset had its predictive capacity assessed using REPTree classifier in 8 datasets of different plant species.

The experimental results show: **(1)** Application of 5 metaheuristics to the feature selection problem in biological sequences;
**(2)** An in-depth analysis of 5,467 features; **(3)** The metaheuristic efficiency to select relevant features, providing competitive classification performance; **(4)** A new pipeline to find a minimum number of features in lncRNAs and biological sequences.

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
