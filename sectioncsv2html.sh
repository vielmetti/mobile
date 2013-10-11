#!/bin/sh
echo "<ul data-filter=\"true\">" > $1.html
awk -F, '{ print "<li><a href=\"" $2 "\">" $3 "</a>"  }' < $1.out.csv >> $1.html
echo "</ul>" >> $1.html

