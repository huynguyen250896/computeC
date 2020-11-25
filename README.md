# computeC v0.1.0
#### I. Introduction
---
This package is built to serve as a support tool for the paper "*[Improving existing analysis pipeline to identify and analyze cancer driver genes using multi-omics data](https://www.nature.com/articles/s41598-020-77318-1)*". </br> The package aims to automatically rapidly compute correlation coefficients between each of genes versus each of clinical features of interest, and then adjust identified log-rank P-value following Benjamini-Hochberg FDR. </br> 

#### II. Data Structure
---
You must preprare the two kinds of the following data: *gene_expresssion* and *clinical_feature* (see the 'IV.Implementation' section) 
- gene_expression: the data include the rows are the samples/patients, the columns are genes, and each cell's value is expression levels of genes. Alternatively, you can use DNA copy number alteration data or DNA methylation data or anything else.
- clinical_feature: the data include the rows are the samples/patients, the columns are the clinical features (e.g., lymph, npi, stage, etc..., in which, lymph, npi, and stage denote numbers of positive lymph nodes, the Nottingham prognostic index, and tumour stage, respectively).

Please download datasets [Dataset](https://github.com/huynguyen250896/computeC/tree/master/Dataset) as examples to well grasp computeC's requirement on data structure.

#### III. Pipeline
---
![Figure](https://imgur.com/7XOxlHw.png)
**Figure:** Pipeline of the package computeC.

#### IV. Implementation
---
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
computeC(gene_expression,clinical_feature,"lymph") #compute Spearman's Rank correlation coefficients (default method)
computeC(gene_expression,clinical_feature,"npi", methodCC = "pearson") #compute Pearson's correlation coefficients
computeC(gene_expression,clinical_feature,"stage", methodCC = "kendall") #compute Kendall's correlation coefficients
```

#### V. What's new
---
- 2020-09-30: the function now can compute one of the three correlation methods: Pearson, Spearman's rank, or Kendall's tau-b

#### VI. Citation
---
Please kindly cite the following paper (and Star this Github repository if you find this tool of interest) if you use the tool in this repo: </br>
```sh
Reference Type: Journal Article
Author: Nguyen, Quang-Huy
Le, Duc-Hau
Year: 2020
Title: Improving existing analysis pipeline to identify and analyze cancer driver genes using multi-omics data
Journal: Scientific Reports
Volume: 10
Issue: 1
Pages: 20521
Date: 2020/11/25
ISSN: 2045-2322
DOI: 10.1038/s41598-020-77318-1
```

Feel free to contact [Quang-Huy Nguyen](https://github.com/huynguyen250896) <huynguyen96.dnu AT gmail DOT com> for any questions about the code and results.
