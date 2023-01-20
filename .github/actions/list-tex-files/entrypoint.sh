#!/bin/sh -l

echo "Searching folder '$1'"
files=$(find $1 -type f -name "*.tex" | tr '\n' ', ')
files=files | sed -r 's/(.*),/\1/'
echo "[$files]"
echo "files=$files" >> $GITHUB_OUTPUT