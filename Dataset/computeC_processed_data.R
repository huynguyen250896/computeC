#library
devtools::install_github("huynguyen250896/computeC")
library(computeC)

exp = read.table("gene_expression.txt", sep = "\t", header = T, check.names = F)
cli = read.table("clinical_feature.txt", sep = "\t", header = T, check.names = F)


computeC(data = exp, clinical = cli, col = "lymph")