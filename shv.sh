#!/bin/bash

read -p "Enter the length of array: " len
sum=0

while [[ i -lt len ]]
do
    read -p "Enter the number: " arr[i]
    sum=$(( $sum + ${arr[i]} ))
    ((i++))
done
echo "Sum of array: $sum"

max=0
i=0
while [[ i -lt len ]]
do
    if [[ "$max" -lt "${arr[i]}" ]]
    then
        max=${arr[i]}
    fi
    ((i++))
done


max2=0
i=0

while [[ i -lt len ]]
do
    if [[ "$max2" < "${arr[i]}" && "${arr[i]}" < "$max" ]]
    then
        max2=${arr[i]}
    fi
    ((i++))
done

echo "The 2nd biggest number of the array: $max2"

max3=0
i=0

while [[ i -lt len ]]
do
    if [[ "$max3" < "${arr[i]}" && "${arr[i]}" < "$max2" ]]
    then
        max3=${arr[i]}
    fi
    ((i++))
done

echo "The 3rd biggest number of the array: $max3"