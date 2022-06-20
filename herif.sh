#!/bin/bash

VAR = "Hello Slope it is txt"

if grep -q "txt" <<< "$VAR"; then
    echo "$VAR Found txt"
else
    echo "Not found txt"
fi