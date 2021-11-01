#!/bin/bash
# read -p "Enter the number: " num
# len=${#num}
# largest=0

# for ((i=0; i<$len; i++))
# do
# if [[ "$largest" < "${num:i:0}" ]]
# then
#  echo 'hi'
# fi
#  echo "hello `${num[$i]}`"
# done

# echo $largest
# echo $num

# array=(1 2 3 4 5` 6 7)

read -p "Enter the number: " array

min=0
# max=$(( ${#array[@]} -1 ))
max=${#array}
echo $max
while [[ min -lt max ]]
do
    # Swap current first and last elements
    x="$array[$min]"
    echo "Hi $x"
    array[$min]="${array[$max]}"
    array[$max]="$x"
    # Move closer
    (( min++, max-- ))
done

echo "${array[@]}"