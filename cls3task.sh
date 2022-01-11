#!/bin/bash

read -p "Enter number of Elements: " len

i=0

odd=0
even=0

while [ $i -lt $len ]
do
read ${arr[$i]}

if [ $((arr[i]%2)) -eq 0 ]
then
even=$(( arr[i] + $even ))
else
odd=$(( arr[i] + $odd ))

fi

i=$(($i+1))
done


# odd=0
# even=0

# i=0
# while [ $i -lt $len ]
# do
# if [ $((arr[i]%2)) -eq 0 ]
# then
# echo "hi"
# even=$(( arr[i] + $even ))
# else
# odd=$(( arr[i] + $odd ))

# fi
# ((i++))
# done

echo "$even $odd"

# read -p