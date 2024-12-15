#!/bin/bash
# Usage: ./makepdf.sh sample.html sample.pdf
t=$(mktemp -p .) || exit
trap 'rm -rf "$t"; exit' ERR EXIT  # HUP INT TERM

INFILE="$1"

if [[ $1 == *.md ]]
then
	jekyll build
	INFILE="_site/${1%.md}.html"
fi

#cat $INFILE | sed 's/media="openhtmltopdf"/media="print"/g' | iconv -f utf-8 -t windows-1252 > $t
cat $INFILE | sed 's/media="openhtmltopdf"/media="print"/g' > $t

weasyprint --pdf-variant "pdf/ua-1" -v -d $t $2

