#!/bin/bash
#jach

outdir=html

for f in bib/*.bib
do
   echo $f
   filename=$(basename -- "$f")
   extension="${filename##*.}"
   year="${filename%.*}"
   echo $year
   bibtex2html --revkeys -nodoc -nobibsource -s siam -noheader -d -r -t $year -css style.css $f
   sed -i 's/<em>This file was generated by//g' $year.html  
   sed -i '/<a href="http:\/\/www.lri.fr\/~filliatr\/bibtex2html\/">bibtex2html<\/a> 1.99.<\/em><\/p>/d' $year.html  
   sed -i 's/<em>/<b>/g' $year.html  
   sed -i 's/<\/em>/<\/b>/g' $year.html  
   mv $year.html $outdir/
   cd $outdir 
   ls -r *.html | xargs cat > body.html
   cd ..
   echo "<html><head><link rel=stylesheet type="text/css" href="style.css"></head><body>" > index.html
   cat html/body.html >> index.html
   echo "</body></html>" >> index.html
done

#bibtex2html --revkeys -d -r -t "UPLB Institute of Computer Science Publications" -css style.css index.bib
#rm *.aux *.bbl *.blg bib2html*
