#!/bin/bash
# Usage: ./makepdf.sh sample.html sample.pdf
t=$(mktemp -p .) || exit
trap 'rm -rf "$t"; exit' ERR EXIT  # HUP INT TERM

cat $1 | sed 's/media="openhtmltopdf"/media="print"/g' > $t

weasyprint --pdf-variant "pdf/ua-1" -v -d $t $2

