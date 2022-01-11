#!/bin/bash
array=(5 15 51 19 20 10 29 8 59 2)

i=0
j=0

while [ $i -lt ${#array[@]} ]
do
    prime_check=1
    if [[ array[i] -ne 2 ]]
    then
        for ((k=2; k<=array[i]/2; k++))
        do
            if [[ $((array[i]%k)) -eq 0  ]]
            then
                prime_check=0
                break
            fi
        done
    else
        prime_check=0
    fi
    if [ $prime_check -eq 1 ]
    then
        prime[j]=${array[i]}
        ((j++))
    fi
    ((i++))
done


np=${#prime[@]}

for (( i=0; i<$np; i++ ))
do
    for (( j=i+1; j<$np; j++ ))
    do
        if [[ prime[i] -lt prime[j] ]]
        then
            temp=${prime[i]}
            prime[i]=${prime[j]}
            prime[j]=$temp
        fi
    done
done

i=0
sum=0
while [ $i -lt $((np-1)) ]
do
    echo -e "${prime[i]}"
    sum=$((sum+prime[i]))
    ((i++))
done


echo -e "Sum = ${prime[@]:0:np-1} = $sum"