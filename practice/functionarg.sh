#!/bin/bash

<<comment
  function in Bourne Again Shell
comment

read -p "Enter a number from user : " number

len=${#number}

function FirstSmallestDigit(){
    i=0
    min=10
    while [[ i -lt len ]]
    do
        if [[ min -gt ${number[@]:i:1} ]]
        then
            min=${number[@]:i:1}
        fi
        ((i++))
    done
    return $min
}
function NextSmallestDigit(){
    i=0
    min=10
    while [[ i -lt len ]]
    do
        if [[ min -gt ${number[@]:i:1} && ${number[@]:i:1} -gt $1 ]]
        then
            min=${number[@]:i:1}
        fi
        ((i++))
    done
    echo -e "Next smallest digit is: $min"
}

FirstSmallestDigit
echo -e "$min"
NextSmallestDigit $min
NextSmallestDigit $min