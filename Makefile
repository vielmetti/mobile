
all:		a2trees.html

trees.csv:	TreeInventoryMay2009.csv
	perl -pe 's/\r/\n/g' TreeInventoryMay2009.csv > trees.csv

acer-saccharum.csv:	trees.csv
	grep -i "Acer saccharum" trees.csv > acer-saccharum.csv
acer-saccharum.html:	acer-saccharum.csv treecsv2html.sh
	sh ./treecsv2html.sh acer-saccharum

malus-pumila.csv:	trees.csv
	grep -i "Malus pumila" trees.csv > malus-pumila.csv
malus-pumila.html:	malus-pumila.csv treecsv2html.sh
	sh ./treecsv2html.sh malus-pumila

malus-spp.csv:		trees.csv
	grep -i "Malus spp." trees.csv > malus-spp.csv
malus-spp.html:		malus-spp.csv treecsv2html.sh
	sh ./treecsv2html.sh malus-spp

pyrus-communis.csv:	trees.csv
	grep -i "Pyrus communis" trees.csv > pyrus-communis.csv
pyrus-communis.html:	pyrus-communis.csv treecsv2html.sh
	sh ./treecsv2html.sh pyrus-communis

prunus-persica.csv:	trees.csv
	grep -i "Prunus persica" trees.csv > prunus-persica.csv
prunus-persica.html:	prunus-persica.csv treecsv2html-map.sh
	sort -u prunus-persica.csv | sh ./treecsv2html-map.sh > prunus-persica.html

amelanchier-spp.csv:	trees.csv
	grep -i "Amelanchier spp" trees.csv > amelanchier-spp.csv
amelanchier-spp.html:	amelanchier-spp.csv treecsv2html.sh
	sh ./treecsv2html.sh amelanchier-spp

a2trees.html:	acer-saccharum.html malus-pumila.html pyrus-communis.html \
		amelanchier-spp.html prunus-persica.html
	sh ./assemble-index.sh > a2trees.html
