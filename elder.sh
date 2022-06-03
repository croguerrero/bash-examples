#!/bin/bash

echo "Welcome Elder"
echo "Welcome tarnished.Please select your starting class:
1-Samurai
2-Prisoner
3-Prophet"

read class
case $class in
    1)
        type="samurai"
        hp=100
        atk=$((RANDOM%10+1))
        ;;
    2)
        type="prisoner"
        hp=100
        atk=$((RANDOM%10+1))
        ;;
    3)
        type="prophet"
        hp=100
        atk=$((RANDOM%10+1))
        ;;
esac

echo "You are a $type with $hp hp and $atk attack"


beast=$(( $RANDOM % 2 ))

read tarnished

if [[ $beast == $tarnished ]]; then
    echo "Beast Vanquished!!"
else
    echo "You Died"
    exit 1
fi

sleep 2
beast=$(( $RANDOM % 10 ))

read -p "Boss Battle. Get sacred . Pick a number betwen (1-9) " tarnished

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
    if [[ $USER == "root"]]; then 
    echo "Beast Vanquished!!"
else
    echo "You Died"
fi
