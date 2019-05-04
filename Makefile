.PHONY: all

all: thesis.pdf clean

thesis.pdf: thesis.tex thesis.sty references.bib ./subtex/*
	xelatex thesis.tex
	biber thesis
	xelatex thesis.tex
	xelatex thesis.tex

.PHONY: clean fullClean

clean:
	rm -f thesis.{aux,bbl,bcf,blg,log,run.xml,toc}

fullClean: clean
	rm -f thesis.pdf
