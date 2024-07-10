#!/bin/bash
rm ics-publications.bib
cat years/*.bib > index.bib
bibtex2html --revkeys -d -r -t "UPLB Institute of Computer Science Publications" -css style.css index.bib
rm *.aux *.bbl *.blg bib2html*
