# computeC v0.1.0
#### I. Introduction
This package is built to serve as a support tool for the paper "*An improved protocol for identification and analysis of driver genes using multi-omics data*". </br> The package aims to automatically rapidly compute the Spearman's Rank correlation coefficients between each of genes versus each of clinical features of interest, and then compute Q-value (Benjamini-Hochberg procedure) using the function computeQ for the package [computeQ](https://github.com/huynguyen250896/computeQ) based on the previously identified p-values. </br> 

#### II. Data Structure
You must preprare the two kinds of the following data: *gene_expresssion* and *clinical_feature* (see the 'IV.Implementation' section) 
- gene_expression: the data include the rows are the samples/patients, the columns are genes, and each cell's value is expression levels of genes.
- clinical_feature: the data include the rows are the samples/patients, the columns are the clinical features (e.g., lymph, npi, stage, etc.). lymph, npi, and stage denote numbers of positive lymph nodes, the Nottingham prognostic index, and tumour stage, respectively.

Please download datasets [Dataset](https://github.com/huynguyen250896/computeC/tree/master/Dataset) as examples to well grasp computeC's requirement on data structure.

#### III. Pipeline
![Figure](https://imgur.com/iaGDUBS.png)
Figure: Pipeline of the package computeC.

#### IV. Implementation
Use the following command to install directly from GitHub;
```sh
devtools::install_github("huynguyen250896/computeC")
```
Call the library;
```sh
library(computeC)
```
running example:
```sh
computeC(gene_expression,clinical_feature,"lymph")
```
#### V. Citation
Please kindly cite the following paper if you use the code, datasets or any results in this repo: </br>
```sh
...
```

Feel free to contact [Quang-Huy Nguyen](https://github.com/huynguyen250896) <huynguyen96.dnu AT gmail DOT com> for any questions about the code and results.
