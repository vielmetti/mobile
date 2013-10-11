#!/bin/sh
awk -F, 'BEGIN { print "<ul data-filter=\"true\">" } \
	       { print "<li><a href=\"" $2 "\">" $3 "</a>"  } \
         END   { print "</ul>" } '

