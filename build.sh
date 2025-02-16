#!/bin/bash
rm ics-publications.bib
cat bib/*.bib > index.bib
bibtex2html --revkeys -d -r -t "UPLB Institute of Computer Science Reseach Publications" -o index_all -css style.css index.bib 
rm *.aux *.bbl *.blg bib2html*
