#!/bin/bash

counter=0
while [ $counter -lt 10 ]; do
    echo "Counter is $counter"
    let counter=counter+1
done

counter=20 
until [ $counter -lt 10 ]; do
    echo "Counter is $counter"
    let counter-=1
done
