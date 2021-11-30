#!/bin/bash
<<comment

    Title: Lab Report 1 (problem 4)
    Description: Write a Shell program to find the 3 rd biggest digit from a number using While loop.
    Author: Amanur Rahman
    Date: 04/11/2021

comment

# Get number from user input
read -p "Enter the number: " number

# Number length
len=${#number}

# Let max equal zero
max=0

i=0
# Get Most largest digit
while [[ i -lt len ]]
do
    if [[ "$max" < "${number[@]:i:1}" ]]
    then
        max=${number[@]:i:1}
    fi
    ((i++))
done


max2=0      #let 2nd largest digit equal zero
i=0         #intialize i equal zero

# Get 2nd Most largest digit
while [[ i -lt len ]]
do
    if [[ "$max2" < "${number[@]:i:1}" && "${number[@]:i:1}" < "$max" ]]
    then
        max2=${number[@]:i:1}
    fi
    ((i++))
done

max3=0      #let 2nd largest digit equal zero
i=0         #intialize i equal zero

# Get 3rd Most largest digit
while [[ i -lt len ]]
do

    # Swap current first and last elements
    x=${array[$min]}
    echo "Hi $x"
    array[$min]="${array[$max]}"
    array[$max]="$x"
    # Move closer
    (( min++, max-- ))

    if [[ "$max3" < "${number[@]:i:1}" && "${number[@]:i:1}" < "$max2" ]]
    then
        max3=${number[@]:i:1}
    fi
    ((i++))

done

echo "The 3rd biggest digit from a number $max3"