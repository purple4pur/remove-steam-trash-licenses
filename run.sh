#!/usr/bin/bash

# Usage:
#   ./run.sh url.txt
#   ./run.sh url.txt 70

chrome="/C/Program Files/Google/Chrome/Application/chrome.exe"

loop=-1
if [[ "$2" -gt 0 ]]; then
    loop=$2
fi

i=1
cat $1 | while read line; do
    echo "Opening URL # $i ..."
    "$chrome" $line
    sleep 2
    ((i++))
    if [[ $loop -ne -1 && $i -gt $loop ]]; then
        break;
    fi
done
