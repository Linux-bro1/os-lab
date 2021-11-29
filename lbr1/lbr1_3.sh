#!/bin/bash

<<comment

    Title: Lab Report 1 (problem 3)
    Description: Write a Shell program to find the prime numbers from a set of numbers and
    sum of them using arrays.
    Author: Amanur Rahman
    Date: 04/11/2021

comment

read -p "Enter the number of arr elements: " num
i=0
sumofprime=0

while [ $i -lt $num ]
do
    read arr[i]
    ((i++))
done

j=0
p=0
while (( $j < $num ))
do
    pr=1
    for ((i=2; i<=${arr[j]}/2; i++))
    do
        
        if [ $((${arr[j]}%i)) -eq 0 ]
        then
            pr=0
            break
        fi
    done
    if [ $pr -eq 1 ]
    then
        prime[p]=${arr[j]}
        ((sumofprime+=${arr[j]}))
        ((p++))
    fi
    ((j++))
done

echo "${prime[@]} these are prime numbers, Sum of all prime numbers: $sumofprime"
