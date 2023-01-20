#!/bin/sh -l

echo "Searching folder '$1'"
files=$(find $1 -type f -name "*.tex")
echo "$files"
echo "files=toJSON($files)" >> $GITHUB_OUTPUT