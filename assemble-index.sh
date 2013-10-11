#!/bin/sh
for n in suggestion newspapers transit books wiki newsfeed weather airlines \
         social automobile productivity university unsorted
do
	egrep '^'$n',' < mobile.csv > $n.out.csv
done
