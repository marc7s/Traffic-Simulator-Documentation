#!/bin/sh -l

echo "Searching folder '$1'"
files=$(find $1 -type f -name "*.tex" | tr "\n" ">" | sed 's/\(.*\)>/\1</' | sed 's/>/", "/g' | sed 's/</"/g')
# | sed "s/\(.*\)\$/\1\']/" | sed "s/\$/\',\'/g")
#files=files | sed -r 's/(.*),/\1/'
fileArray="[\"${files}]"
echo "${fileArray}"
echo "files='${fileArray}'" >> $GITHUB_OUTPUT