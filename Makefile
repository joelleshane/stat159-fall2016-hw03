.PHONY: all

all: eda regression report

data/Advertising.csv:
	curl -o data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

tests/test-regression.R: code/test-that.R data/Advertising.csv 
	Rscript code/test-that.R

data/eda-output.txt: code/scripts/eda-script.R data/Advertising.csv 
	cd code; Rscript scripts/eda-script.R

data/regression.Rdata: code/scripts/regression-script.R data/Advertising.csv
	cd code; Rscript scripts/regression-script.R

report/report.pdf:
	R -e "rmarkdown::render('report/report.Rmd')"

.PHONY: clean

clean:
	rm report/report.pdf
