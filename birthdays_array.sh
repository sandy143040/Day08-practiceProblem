#!/bin/bash

declare -A birthdays

for ((i=1; i<=50; i++))
do
    year=$((RANDOM % 2 + 92)) # Random year between 92 and 93
    month=$((RANDOM % 12 + 1)) # Random month between 1 and 12
    birthdays["$i"]=$month
done

for ((m=1; m<=12; m++))
do
    echo "Birthdays in month $m:"
    for i in "${!birthdays[@]}"
    do
        if [[ ${birthdays[$i]} -eq $m ]]
        then
            echo "Person $i"
        fi
    done
    echo
done






