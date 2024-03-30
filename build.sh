#!/bin/bash
rm ics-publications.bib
cat *.bib > ics-publications.bib
bibtex2html -d -r ics-publications.bib

