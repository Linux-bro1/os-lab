#!/bin/bash

read -p "Enter the number of Blocks- " nob

i=0
while [ $i -lt $nob ]
do
    read -p "Block $((i+1)) size: " bs[i]
    ((i++))
done

read -p "Enter the number of process- " nop

i=0
while [ $i -lt $nop ]
do
    read -p "Enter memory required for process $((i+1)) - " ps[i]
    if [[ bs[i] -ge ps[i] ]]
    then
        intFrag[i]=$(( bs[i]-ps[i] ))
        allocate[i]="YES"
    else
        intFrag[i]="---"
        allocate[i]="NO"
    fi
    ((i++))
done

echo -e "Process Processes Size Bloks Block size Allocated Int. Fragmentation"

i=0
while [ $i -lt $nob ]
do
    echo -e " $((i+1))\t ${ps[i]}0\t$((i+1))\t${bs[i]}\t${allocate[i]}\t${intFrag[i]}"
    ((i++))
done

