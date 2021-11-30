#!/bin/bash

declare -r max=123

# echo $var

for (( i=0; i<$max; i++))
do
    b[i]=0
    f[i]=0
    frag[i]=0
    bf[i]=0
    ff[i]=0
done

read -p "Enter the number of blocks: " nb
read -p "Enter the number of files: " nf
echo -e "\nEnter the size of blocks: \n"

for (( i=1; i<=$nb; i++))
do
    read -p "Block $i: " b[i]
done

echo -e "\nEnter the size of files: \n"

for (( i=1; i<=$nf; i++))
do
    read -p "File $i: " f[i]
done

for (( i=0; i<=$nf; i++))
do
    for (( j=0; j<=$nb; j++))
    do
        if [[ bf[j] -ne 1 ]]
        then
            temp=$((b[j]-f[i]))
            if (( $temp>=0 ))
            then
                if [[ $highest -lt $temp ]]
                then
                    ff[i]=$j
                    highest=$temp
                fi
            fi
        fi
    done
    frag[i]=$highest
    bf[${ff[i]}]=1
    highest=0
done

echo -e "\nFile_no \tFile_size \tBlock_no \tBlock_size \tFragment"
for (( i=1; i<=$nf; i++))
do
    echo -e "\n$i\t\t${f[i]}\t\t${ff[i]}\t\t${bf[i]}\t\t${frag[i]}"
done

for k in "${!alpha[@]}"; do
    printf "alpha[%s]=%s\n" "$k" "${alpha[$k]}"
done

