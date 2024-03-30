#!/bin/bash
rm ics-publications.bib
cat *.bib > ics-research-papers.bib
bibtex2html -d -r ics-research-papers.bib

