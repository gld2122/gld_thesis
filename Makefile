thesis.pdf: thesis.tex thesis.sty references.bib ./subtex/*
	xelatex thesis.tex
	biber thesis
	xelatex thesis.tex

.PHONY: clean

clean:
	rm thesis.{aux,bbl,bcf,blg,log,run.xml,toc}
