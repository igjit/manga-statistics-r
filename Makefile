all: docs/*.md

%.md: %.Rmd
	Rscript -e "rmarkdown::render('$^', quiet = TRUE)"
