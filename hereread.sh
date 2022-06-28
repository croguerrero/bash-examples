#!/bin/bash

STRING="Hello Slope it is txt"
read -r -a Words <<< "$STRING" 

echo "First Word is ${Words[0]}"
echo "Second Word is ${Words[1]}"
echo "Third Word is ${Words[2]}"
echo "Fourth Word is ${Words[3]}"

