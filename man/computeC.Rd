% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computeC.R
\name{computeC}
\alias{computeC}
\title{computeC: perform correlation analyses between individual genes and each clinical feature of your interest}
\usage{computeC(data,clinical,col, methodCC)}
\arguments{
\item{data}{data frame or matrix. The data represents its rows are samples and its columns are genomic features.}

\item{clinical}{data frame. The data represents its rows are samples and its columns are clinical features. Note that
samples are also included in rows of \code{data} and in the same order.}

\item{col}{character. Name of any columns in \code{clinical}. This must be a clinical feature that you are interest.}  
  
\item{methodCC}{Correlation method. Allowed values are \code{spearman} (default), \code{pearson},
\code{kendall}.}
}

\description{Automatically perform correlation analyses between individual genes and each clinical feature of your interest. 
For further information on requirements as well as how to implement this tool, please visit my Github repository: 
https://github.com/huynguyen250896/computeC.}

\examples{
computeC(data = exp, clinical = cli, col = "lymph")
#data = exp => gene expression
#col = "lymph" => association between the expression levels of each gene 
#versus the number of lymph nodes of breast cancer patients.
}

\references{
Quang-Huy Nguyen, Duc-Hau Le. (2020). 
Improving existing analysis pipeline to identify and analyze cancer driver genes using multi-omics data.
Scientific Reports, 10(1):20521.
}  
  
\author{
Quang-Huy Nguyen
}
