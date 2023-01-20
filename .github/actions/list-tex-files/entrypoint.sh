#!/bin/sh -l

echo "Searching folder '$1'"
#files=$(find $1 -type f -name "*.tex")
readarray -d '' files < <(find $1 -type f -name "*.tex")
echo "$files"
echo "files=$files" >> $GITHUB_OUTPUT