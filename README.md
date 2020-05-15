# computeC v0.1.0
#### I. Introduction
This package is built to serve as a support tool for the paper "A workflow for identification and analysis of driver genes using an integrative analysis of a multiomics dataset". The package aims to automatically rapidly compute the Spearman's Rank correlation coefficients between each of genes versus each of clinical features of interest, and then compute Q-value (Benjamini-Hochberg procedure) using the function computeQ for the package [computeQ](https://github.com/huynguyen250896/computeQ) based on the previously identified p-values. </br> 

#### II. Data Structure
- gene expression data: the data include the rows are the samples/patients, the columns are genes, and each cell's value is expression levels of genes.
- clinical data: the data include the rows are the samples/patients, the columns are the clinical features (e.g., lymph, npi, stage, etc.). lymph, npi, and stage denote numbers of positive lymph nodes, the Nottingham prognostic index, and tumour stage, respectively.

The example dataset can be found in [Dataset](https://github.com/huynguyen250896/computeC/tree/master/Dataset)

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
Please kindly cite the two repositories if you use the code, datasets or any results in this repo: </br>
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3686388.svg)](https://doi.org/10.5281/zenodo.3686388)
```sh
@software{quang_huy_nguyen_2020_3686388,
  author       = {Nguyen, Quang-Huy},
  title        = {huynguyen250896/computeQ: computeQ v 0.1.0},
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
  author       = {Nguyen, Quang-Huy},
  title        = {huynguyen250896/computeC: computeC v 0.1.0},
  month        = feb,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {0.1.0},
  doi          = {10.5281/zenodo.3686391},
  url          = {https://doi.org/10.5281/zenodo.3686391}
}
```
Feel free to contact [Quang-Huy Nguyen](https://github.com/huynguyen250896) <huynguyen96.dnu AT gmail DOT com> for any questions about the code and results.
