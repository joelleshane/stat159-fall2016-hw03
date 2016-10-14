## Files in this directory (Code):

### test-that.R

### Functions folder

This folder cointains the files used to 

### Scripts folder
##### This folder contains the R scripts used to run the regression, compute summary statistics, and produce images. The files in this folder include:
	
* eda-script.R :
Using the advertising data set, this file computes and produces summary statistics about TV, radio, and newspaper advertising and sales. It produces a file called "eda-output.txt" that contains the summary statistics. This file also creates histograms (in *png* format) showing the distribution of TV, radio, and newspaper advertising and sales.

* regression-script.R : 
Using the advertising data set, this file computes a multiple linear regression of the effect of TV, radio, and newspaper advertising on sales. A file is created called "regression.RData" that stores the summary and output of this regression with the regression coefficients. There are also graphs made and saved in the images folder comparing TV, radio, and newspaper advertising versus sales and they includes a best fit line. This files creates a residual plot, a scale-location plot and a normal Q-Q plot. All of these graphs are saved as *png*.

* session-info-script.R : This file makes calls to all the packages used in this project using the command *library().* It outputs the file "session-info-script.txt" that

### Tests Folder

This folder has the file "test-regression.R" that
