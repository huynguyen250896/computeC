# computeC v0.1.0
#### I. Introduction
This package is built to serve as a support tool for the paper "A workflow for identification and analysis of driver genes: a case study in breast cancer". The package aims to compute automatically rapidly the correlation between individual genes and clinical features based on Spearman's rank correlation, and then compute Q-value (Benjamini-Hochberg procedure) based on the previously identified p-values using the function computeQ by the package [computeQ](https://github.com/huynguyen250896/computeQ). </br>

#### II. Data Structure
- gene expression data: the data include the rows are the samples/patients, the columns are genes, and each cell's value is expression levels of genes.
- clinical data: the data include the rows are the samples/patients, the columns are the clinical features (e.g., lymph, npi, stage, etc.). lymph, npi, and stage denote numbers of positive lymph nodes, the Nottingham prognostic index, and tumour stage, respectively.

The example dataset can be found in [Dataset](https://github.com/huynguyen250896/computeC/tree/master/Dataset)

#### III. Pipeline
![Figure](https://imgur.com/nGdjtfj.png)
Figure: Pipeline of the package computeC.

#### IV. Implementation
Use the following command to install directly from GitHub;
```sh
devtools::install_github("huynguyen250896/computeQ")
devtools::install_github("huynguyen250896/computeC")
install.package("dplyr") #if needed
```
Call the library;
```sh
library(computeQ)
library(computeC)
library(dplyr) #if needed
```
running example:
```sh
computeC(gene_expression,clinical_feature,"lymph")
```
#### V. Citation
Please kindly cite the two repositories if you use the code, datasets or any results in this repo: </br>
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3686388.svg)](https://doi.org/10.5281/zenodo.3686388)
```sh
@software{quang_huy_nguyen_2020_3686388,
  author       = {Quang-Huy Nguyen},
  title        = {huynguyen250896/computeQ: v 0.1.0},
  month        = feb,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {0.1.0},
  doi          = {10.5281/zenodo.3686388},
  url          = {https://doi.org/10.5281/zenodo.3686388}
}
```
</br> And </br>
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3686391.svg)](https://doi.org/10.5281/zenodo.3686391)
```sh
software{quang_huy_nguyen_2020_3686391,
  author       = {Quang-Huy Nguyen},
  title        = {huynguyen250896/computeC: v 0.1.0},
  month        = feb,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {0.1.0},
  doi          = {10.5281/zenodo.3686391},
  url          = {https://doi.org/10.5281/zenodo.3686391}
}
```
Feel free to contact [Quang-Huy Nguyen](https://github.com/huynguyen250896) <huynguyen96.dnu AT gmail DOT com> for any questions about the code and results.
