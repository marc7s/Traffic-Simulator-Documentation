#!/bin/sh -l

echo "Searching folder '$1'"
files=()
while IFS = read -r -d $'\0'; do
    files += ("$REPLY")
done < <(find $1 -type f -name "*.tex" -print0)
jstring="["
for file in "${array[@]}"; do 
    jstring+="'$file', ";
done
jstring=jstring | sed 's/\(.*\), /\1/'
#files=$(find $1 -type f -name "*.tex" | tr '\n' ', ')
echo "$files"
echo "$jstring"
echo "files=$jstring" >> $GITHUB_OUTPUT