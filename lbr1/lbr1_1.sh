#!/bin/bash

<<comment

    Title: Lab Report 1 (problem 1)
    Description: Write a shell program to find reverse of an array using while loop.
    Author: Amanur Rahman
    Date: 05/11/2021

comment

i=0
read -p "Enter the number of arr elements: " no
echo "Input array elements: "
while [ $i -lt $no ]
do
    read arr[i]
    ((i++))
done

max=$(($no-1))
i=0
while [ $i -lt $max ]
do
    x=${arr[max]}
    arr[max]=${arr[i]}
    arr[i]=$x
    ((i++))
    ((max--))
done
echo "Array elements after reverse: ${arr[@]}"

# echo "$max $i"
# even=0
# odd=0
# if [ $((arr[i]%2)) -eq 0 ]
# then
# even=$(( arr[i] + $even ))
# else
# odd=$(( arr[i] + $odd ))
# fi