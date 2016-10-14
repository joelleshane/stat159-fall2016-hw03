## The goal of this assignment is to reproduce results from chapter 3.2 of An Introduction to Statistical Learning 

To recreate this project, pull the files in the folder "code" and "report/report.Rmd"  in this repository from github and run the makefile. The Makefile should download the data from online and  generate all content in the **data** and **images** folders

## Reproducing Results from chapter 3.2 of An Introduction to Statistical Learning 

### Contents in this directory:

#### Code file:
This file contains the scripts used to produce the data, images, and report for this project. The commands were executed through the Makefile.

#### Data file:
This file contains the data set that was used in the analysis as well as the summary statistics of the data, a correlation matrix, and regression coeffitients.  These were both produced through the files in Code.
source : *(http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv)*
Authors of the orginial report: Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani

#### Images file:
This file has the scatter plot matrix of the variables in the regression, individual scatterplots of each varaible against sales, some plots that analyze the regression fit, as well as the histograms of TV, radio, newspaper  advertising, and  Sales, separately. These were created through the files contained in the folder Code.

#### Report file:
This file contains the final report that describes and illustrates the project. This was created from the report.Rmd file in this file and the makefile generated a pdf of results. It draws on the data, images, and regression analysis to produce the final report. 

The report is broken down into different sections:

* Abstract
* Introduction
* Data
* Methodology
* Results
* Conclusions
