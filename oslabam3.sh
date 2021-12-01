#!/bin/bash
read -p "Enter the total memory avaiable (in Bytes) -- " ms
read -p "Enter the block size (in Bytes) -- " bs

nob=$((ms/bs))
ef=$((ms-nob*bs))
# echo "$nob $ef $ms $bs"

read -p "Enter the number of processes -- " processNo

i=0
while [ $i -lt $processNo ]
do
    read -p "Enter memory required for process $i (in Bytes) --" mp[i]
    ((i++))
done

echo -e "\n No. of Blocks available in memory -- $nob"
echo -e "\n PROCESS\tMEMORY REQUIRED\t ALLOCATED\tINTERNAL FRAGMENTATION"
p=0
for (( i=0; i<$processNo && p<$nob; i++))
do
    temp=$i+1
    echo -e "\n $temp  \t\t${mp[i]}"
    if [[ mp[i] -gt bs ]]
    then
        echo -e "\t\t NO\t\t---"
    else
        echo -e "\t\t YES\t\t $((bs-mp[i]))"
        tif=$((tif+bs-mp[i]))
        ((p++))
    fi
done

if [[ $i -lt $processNo ]]
then
    echo -e "\t\t Memory is Full, Remaining Process cannot be accomdated"
fi

echo -e "\n\n Total Internal Fragmentation is $tif"
echo -e "\n Total External Fragmentation is $ef"

