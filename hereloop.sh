#!/bin/bash

ARRAY=(1 2 3 4 5 6 7 8 9 10 {a..i})

while read element ; do
    echo $element
    echo "HEllo slope ti"
done <<< $(echo ${ARRAY[*]})
