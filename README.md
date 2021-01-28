# computeC v0.1.0
#### I. Introduction
---
This package is built to serve as a support tool for the paper "*[Improving existing analysis pipeline to identify and analyze cancer driver genes using multi-omics data](https://www.nature.com/articles/s41598-020-77318-1)*". </br> The package aims to automatically rapidly compute correlation coefficients between each of genes versus each of clinical features of interest, and then adjust identified log-rank P-value following Benjamini-Hochberg FDR. </br> 

#### II. Understanding the tool
---
The following are parameters provided by computeC:
- data: data frame or matrix. The `data` includes its rows are samples and its columns are genes.

- clinical: data frame. The data includes its rows are samples and its columns are clinical features (e.g., numbers of positive lymph nodes, the Nottingham prognostic index, and tumour stage, respectively). Note that samples are also included in rows of `data` and in the same order.

- col: character. name of any columns in `clinical`. This must be a clinical feature that you are interest.

- methodCC: character. correlation method. Allowed values are `spearman` (default), `pearson`, `kendall`.

Please download datasets [Dataset](https://github.com/huynguyen250896/computeC/tree/master/Dataset) as examples to well grasp computeC's requirement on data structure and its usage.

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
computeC(data = exp, clinical = cli, col = "lymph") #compute Spearman's Rank correlation coefficients (default method)
computeC(data = exp, clinical = cli, col = "npi", methodCC = "pearson") #compute Pearson's correlation coefficients
computeC(data = exp, clinical = cli, col = "stage", methodCC = "kendall") #compute Kendall's correlation coefficients
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
