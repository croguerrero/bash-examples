#!/bin/bash

ctrcl=0

function trap_ctrcl {
    let ctrcl++
    echo 
    if [[ $ctrcl == 1 ]]; then
        echo "Stop doing that"
    elif [[ $ctrcl == 2 ]]; then
        echo "I warned you"
    else 
        echo "Throwing in the towel"
        exit 
    fi
}
trap trap_ctrcl SIGINT

while true; do
    echo "sleeping"
    sleep 10
done