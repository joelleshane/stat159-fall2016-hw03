.PHONY: all

all: data/eda-output.txt report/report.pdf data/regression.Rdata

data/Advertising.csv:
	curl -o data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

tests/test-regression.R: code/test-that.R data/Advertising.csv 
	Rscript code/test-that.R

data/eda-output.txt: code/scripts/eda-script.R data/Advertising.csv 
	cd code/scripts; Rscript eda-script.R

data/regression.Rdata: code/scripts/regression-script.R data/Advertising.csv
	cd code/scripts; Rscript regression-script.R

report/report.pdf: data/regression.Rdata data/eda-output.txt
	R -e "rmarkdown::render('report/report.Rmd')"

session-info.txt: 
	cd code; Rscript scripts/session-info-script.R

.PHONY: clean

clean:
	rm report/report.pdf
