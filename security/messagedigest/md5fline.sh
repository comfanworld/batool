#!/bin/bash

#  Arguments ： readfile 
#  readfile   a file ready read and calculate hash.
if $# eq 0 ; then
    echo "Missed Arguments ： readfile"
    echo "readfile   a file ready read and calculate hash"
    exit 1
fi

for line in $(cat $1)
do
    echo -n $line|md5sum|awk '{print $1}'
done
