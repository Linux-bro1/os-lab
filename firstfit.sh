#!/bin/bash

read -p "Enter the number of blocks-- " b
i=0
while [ $i -lt $b ]
do
    read -p "Enter the block size b[$((i+1))]--" bs[i]
    ((i++))
done

read -p "Enter the nubmer of files --" f
i=0
while [ $i -lt $f ]
do
    read -p "Enter the file size f[$((i+1))]--" fs[i]
    ((i++))
done

echo -e "\n File no\tFile Size\t Allocated\t Block_No\tBlock_size FRAGMENTATION"
p=0
for (( i=0; i<$b && p<$f; i++))
do
    if [[ bs[i] -ge fs[p] ]]
    then
        echo -e "$p\t\t$((fs[p])) \t\t YES\t\t $i\t\t$((bs[i])) \t\t $((bs[i]-fs[p])) "
        ((p++))
    else
        echo -e "$p\t\t$((fs[p])) \t\t No\t\t $i\t\t$((bs[i])) \t\t ------ "
    fi
done