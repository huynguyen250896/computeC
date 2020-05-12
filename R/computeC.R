#' @title Automatically compute the  correlation between genes and clinical features
#'
#' @description Automatically compute the  correlation between genes and clinical features based on Spearman's rank
#'
#' @param data,var,x
#'
#' @return NULL
#'
#' @examples computeC(cor,feature,"lymph")
#'
#' @export

computeC = function(data,var,x)
{
  #library
  library(tidyr)
  library(tidyverse)
  library(dplyr)
  
  #missing input
  if(missing(data)){
    stop("Error: omics input is missing \n")
  }

  if(missing(var)){
    stop("Error: clinical data is missing \n")
  }

  if(missing(x)){
    stop("Error: clinical feature column in clinical data is missing \n")
  }
  
  #implementation
  cc1 <- data.frame(name=paste("Site", 1:ncol(data)),Estimate=NA ,P.value=NA)
  estimates = numeric(ncol(data))
  pvalues = numeric(ncol(data))
  for (i in c(1:ncol(data))) {
    cc=cor.test(data[,i],var[,x],
                method = "spearman")
    cc1$Estimate[i]=cc$estimate
    cc1$P.value[i]=cc$p.value
    rownames(cc1) = colnames(data)[1:ncol(data)]
  }
  cc1 = list(cc1 %>% subset(Estimate > 0),cc1 %>% subset(Estimate < 0)) # [1] cor coefficient > 0 - [2] cor coefficient <0
  order.pvalue1 = order(cc1[[1]]$P.value)
  order.pvalue2 = order(cc1[[2]]$P.value)
  cc1[[1]] = cc1[[1]][order.pvalue1,] #order rows following p-value
  cc1[[2]] = cc1[[2]][order.pvalue2,] #order rows following p-value
  cc1[[1]]$rank = rank(cc1[[1]]$P.value) #re-order
  cc1[[2]]$rank = rank(cc1[[2]]$P.value) #re-order
  cc1[[1]]$Q.value = computeQ(cc1[[1]]) #compute Q-value
  cc1[[2]]$Q.value = computeQ(cc1[[2]]) #compute Q-value
  cc1[[1]] = cc1[[1]] %>% subset(Q.value <= 0.05) #only retain Genes with Q <=0.05
  cc1[[2]] = cc1[[2]] %>% subset(Q.value <= 0.05) #only retain Genes with Q <=0.05
  return(cc1)
}
