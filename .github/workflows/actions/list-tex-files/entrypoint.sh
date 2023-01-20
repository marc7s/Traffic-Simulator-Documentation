#!/bin/sh -l

echo "Searching folder '$1'"
files=$(find $1 -type f -name "*.tex")
echo "files=$files" >> $GITHUB_OUTPUT