#!/bin/sh -l

echo "Searching folder '$1'"
files=$(find $1 -type f -name "*.tex" | sed 's/\n/,/g')
#files=files | sed -r 's/(.*),/\1/'
echo "['$files]"
echo "files=$files" >> $GITHUB_OUTPUT