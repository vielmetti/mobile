#!/bin/sh
cat mobile-head.html > index.html
cat mobile-body-lead.html >> index.html
for n in suggestion newspapers transit books wiki newsfeed weather airlines \
         social automobile productivity university unsorted
do
	./mobile-body-title.sh $n >> index.html
	egrep '^'$n',' < mobile.csv | ./sectioncsv2html.sh >> index.html
done
cat mobile-body-tail.html >> index.html
