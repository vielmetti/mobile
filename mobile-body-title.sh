#!/bin/sh
echo '<!-- body title -->'
echo '<li data-theme="c">'
echo '<h2 href="#'$1'" data-transition="slide"> '
echo $1
echo '</h2>'
echo '<p>'
echo $2
echo '</p>'
