#!/bin/bash

i=0
even=0
odd=0
read -p "Enter the number of arr elements: " no

while [ $i -lt $no ]
do
read arr[i]

# if [ $((arr[i]%2)) -eq 0 ]
# then
# even=$(( arr[i] + $even ))
# else
# odd=$(( arr[i] + $odd ))
# fi

((i++))
done

i=0
even=0
odd=0

while [ $i -lt $no ]
do 
if [ $((arr[i]%2)) -eq 0 ]
then
even=$(( arr[i] + $even ))
else
odd=$(( arr[i] + $odd ))
fi
i=$((i+1))
done

echo ${arr[@]}
echo "Sum of Even number: " $even
echo "Sum of Odd number: " $odd