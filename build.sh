#!/bin/bash
rm ics-publications.bib
cat *.bib > index.bib
bibtex2html -d -r index.bib
rm *.aux *.bbl *.blg bib2html*
