#!/bin/sh -l

echo "Searching folder '$1'"
#jstring=jstring | sed 's/\(.*\), /\1/'
files=$(find $1 -type f -name "*.tex" | tr '\n' ', ')
files=files | sed 's/\(.*\), /\1/'
echo "$files"
echo "files=$files" >> $GITHUB_OUTPUT