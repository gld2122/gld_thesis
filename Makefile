.PHONY: all

all: thesis.pdf thesis.md thesis.html clean

thesis.pdf: thesis.tex thesis.sty references.bib ./subtex/*
	xelatex thesis.tex
	biber thesis
	xelatex thesis.tex
	xelatex thesis.tex

thesis.md: thesis.tex thesis.sty references.bib ./subtex/*
	pandoc -o thesis.md thesis.tex

thesis.html: thesis.tex thesis.sty references.bib ./subtex/*
	pandoc -s -o thesis.html thesis.tex

.PHONY: clean fullClean

clean:
	rm -f thesis.{aux,bbl,bcf,blg,log,run.xml,toc}

fullClean: clean
	rm -f thesis.pdf
