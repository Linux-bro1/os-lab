#!/bin/bash

read -p "Enter the nubmer of blocks: " nb
read -p "Enter the nubmer of files: " nf


echo -e "\n\nEnter the size of the blocks: "

for (( i=0; i<nb; i++ ))
do
    Block_No[i]=$((i+1))
    read -p "Block $((i+1)): " bs[i]
done

echo -e "\n\nEnter the size of the files: "

for (( i=0; i<nf; i++ ))
do
    File_No[i]=$((i+1))
    read -p "File $((i+1)): " fs[i]
done


for (( i=0; i<nb; i++ ))
do
    for (( j=i+1; j<nb; j++ ))
    do
        if [[ bs[i] -lt bs[j] ]]
        then
            temp=${bs[i]}
            bs[i]=${bs[j]}
            bs[j]=$temp
            
            temp=${Block_No[i]}
            Block_No[i]=${Block_No[j]}
            Block_No[j]=$temp
            
        fi
        
    done
done

echo    "________________________________________________________"
echo -e "|File_No | File_size | Block_No | Block_size | Fragment |"
echo    "________________________________________________________"

for (( i=0; i<nf; i++ ))
do
    if [[ bs[i] -gt fs[i] ]]
    then
        echo -e "| ${File_No[i]}\t |  ${fs[i]}\t\t\b\b\b|   ${Block_No[i]} \t|\t ${bs[i]}\t\b\b\b| $((bs[i]-fs[i]))\t|"
        echo "________________________________________________________"
        
    else
        echo -e "| ${File_No[i]}\t |  ${fs[i]}\t\t\b\b\b|   0 \t|\t 0\t\b\b\b| 0\t|"
        echo  "________________________________________________________"
    fi
done
