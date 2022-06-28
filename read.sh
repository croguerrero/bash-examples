#!/bin/bash

echo "Enter the name of the file "
read file
COUTN=0
while read -r SUPERHERO; do 
     if [ $COUTN == 3 ]; then
         continue 
     else 
         COUTN=$((COUTN+1))
     fi     
    echo "Superhero: $SUPERHERO"
done < $file