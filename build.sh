#!/bin/bash
cat 2017.bib 2016.bib > ics-publications.bib
bibtex2html -d -r ics-publications.bib

