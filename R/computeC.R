#' @title Automatically perform correlation analyses between individual genes and each clinical feature of your interest
#'
#' @description Automatically perform correlation analyses between individual genes and each clinical feature of your interest
#'
#' @docType package
#'
#' @author Quang-Huy Nguyen
#'
#' @usage computeC(data,clinical,col, methodCC)
#'
#' @param data data frame or matrix. The data includes its rows are samples and its columns are genes.
#'
#' @param clinical data frame. The data includes its rows are samples and its columns are clinical features. Note that
#' samples are also included in rows of \code{data} and in the same order.
#'
#' @param col character. name of any columns in \code{clinical}. This must be a clinical feature that you are interest.
#'
#' @param methodCC character. correlation method. This must be a clinical feature that you are interest. Allowed values 
#' are \code{spearman} (default), \code{pearson}, \code{kendall}.
#'
#' @return NULL
#'
#' @examples computeC(data = exp, clinical = cli, col = "lymph")
#'
#' @export

computeC = function(data,clinical,col, methodCC = "spearman")
{
  #library
  library(tidyr)
  library(tidyverse)
  library(dplyr)
  
  #missing input
  if(missing(data)){
    stop("Error: omics input is missing. \n")
  }
  
  if(missing(clinical)){
    stop("Error: clinical data is missing. \n")
  }
  
  if(missing(col)){
    stop("Error: clinical feature column in clinical data is missing. \n")
  }
  
  if(!(col %in% colnames(cli))){
    stop("Error: clinical feature being selected is not included in any columns of clinical data. \n")
  }
  
  if(all(rownames(data) != rownames(clinical))){
    stop("Error: Please make sure samples sharing between input data and clinical data are included at rows of the two and in the same order.")
  }
  
  #define the computeQ function may adjust gained P-values following Benjamini-Hochberg FDR
  computeQ <- function(x)
  {
    (x$P.value*nrow(x))/(x$rank)
  }
  
  #implementation
  cc1 <- data.frame(My_name_is=paste("Huy", 1:ncol(data)),CC=NA ,P.value=NA)
  estimates = numeric(ncol(data))
  pvalues = numeric(ncol(data))
  for (i in c(1:ncol(data))) {
    cc=cor.test(data[,i],clinical[,col],
                method = methodCC)
    cc1$CC[i]=cc$estimate
    cc1$P.value[i]=cc$p.value
    rownames(cc1) = colnames(data)[1:ncol(data)]
  }
  cc1 = cc1[,-1]
  order.pvalue = order(cc1$P.value)
  cc1 = cc1[order.pvalue,] #order rows following p-value
  cc1$rank = rank(cc1$P.value) #re-order
  cc1$Q.value = computeQ(cc1) #compute Q-value
  cc1 = cc1 %>% subset(P.value <= 0.05) #only retain Genes with P <=0.05
  cc1 = cc1 %>% subset(Q.value <= 0.05) #only retain Genes with Q <=0.05
  cc1 = dplyr::select(cc1, -rank) #remove the 'rank' column
  cc1 = list(cc1 %>% subset(CC > 0),cc1 %>% subset(CC < 0)) # [1] cor coefficient > 0 - [2] cor coefficient <0
  return(cc1)}
