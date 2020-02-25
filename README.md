
#### I. Introduction
This repository is built to serve as a support tool for the paper "A workflow for identification and analysis of driver genes: a case study in breast cancer". The package aims to compute automatically rapidly the correlation between genes and clinical features based on Spearman's rank correlation, and then compute Q-value based on the identified p-values. The Q-value is computed using the function computeQ by the package [computeQ](https://github.com/huynguyen250896/computeQ). </br>
#### II. Implementation
Use the following command to install directly from GitHub;
```sh
devtools::install_github("huynguyen250896/computeQ")
devtools::install_github("huynguyen250896/computeC")
install.package("dplyr")
```
Call the library if needed
```sh
library(computeQ)
library(computeC)
library(dplyr)
```
running example:
```sh
computeQ(gene_expression,clinical_feature,"lymph")
```
#### III. Citaiton
Please kindly cite the two repositories if you use the code, datasets or any results in this repo: </br>
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3686388.svg)](https://doi.org/10.5281/zenodo.3686388)
```sh
Quang-Huy Nguyen. huynguyen250896/computeQ computeQ. (2020). doi:10.5281/zenodo.3686388
```
</br> And
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3686391.svg)](https://doi.org/10.5281/zenodo.3686391)
```sh
Quang-Huy Nguyen. huynguyen250896/computeC: v 0.1.0. (2020). doi:10.5281/zenodo.3686391
```
Feel free to contact [Quang-Huy Nguyen](https://github.com/huynguyen250896) <huynguyen96.dnu AT gmail DOT com> for any questions about the code and results.
