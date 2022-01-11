#!/bin/bash

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

# Let min equal zero
min=10

i=0
# Get Most largest digit
while [[ i -lt len ]]
do
    if [[ "$min" > "${number[@]:i:1}" ]]
    then
        min=${number[@]:i:1}
    fi
    ((i++))
done

echo "The 1st smallest digit from a number $min"


min2=10      #let 2nd largest digit equal zero
i=0         #intialize i equal zero

# Get 2nd Most largest digit
while [[ i -lt len ]]
do
    if [[ $min2 -gt ${number[@]:i:1} && ${number[@]:i:1} -gt $min ]]
    then
        min2=${number[@]:i:1}
    fi
    ((i++))
done

echo "The 2nd smallest digit from a number $min2"


min3=10      #let 2nd largest digit equal zero
i=0         #intialize i equal zero

# Get 3rd Most largest digit
while [[ i -lt len ]]
do
    if [[ $min3 -gt ${number[@]:i:1} && ${number[@]:i:1} -gt $min2 ]]
    then
        min3=${number[@]:i:1}
    fi
    ((i++))
    # my comment
    
done

echo "The 2nd smallest digit from a number $min3"