thesis.pdf: thesis.tex thesis.sty references.bib ./subtex/*
	xelatex thesis.tex
	biber thesis
	xelatex thesis.tex
