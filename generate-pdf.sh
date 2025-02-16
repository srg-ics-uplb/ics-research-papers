#!/bin/bash
rm *.aux *.bbl *.blg bib2html*
cat bib/*.bib > ics-publications.bib
pdflatex ics-publications
bibtex ics-publications
bibtex ics-publications
bibtex ics-publications
pdflatex ics-publications
#bibtex2html --revkeys -d -r -t "UPLB Institute of Computer Science Reseach Publications" -o index_all -css style.css index.bib 
#rm *.aux *.bbl *.blg bib2html*
