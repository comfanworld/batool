#!/bin/bash

for line in $(cat $1)
do
    echo -n $line|md5sum|awk '{print $1}'
done
