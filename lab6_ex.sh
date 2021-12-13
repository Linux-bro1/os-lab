#!/bin/bash
read -p "Enter the total memory avaiable (in Bytes) -- " ms

i=1
am=0
tmp=0

while [ true ]
do
    read -p "Enter memory required for process $i (in Bytes) -- " mp[i]
    am=$(( am+mp[i]))
    if [[ $am -gt $ms ]]
    then
        echo -e "\n\n\nMemory is Full"
        break
    else
        echo "Memory is allocated for Process $i"
        alm[i]=${mp[i]}
        tmp=$(( tmp+mp[i] ))
        read -p "Do you want to continue(y/n): " choice
        [ ${choice,,} = 'n' ] && break
    fi
    ((i++))
    
done

echo "Total Memory Avaiable - $ms"
echo -e "PROCESS-----MEMORY-ALLOCATED"
len=${#alm[@]}
i=1
while [ $i -le $len ]
do
    echo "$i ----------- ${alm[i]}"
    ((i++))
done

echo "Total Memory Allocated is $tmp"
echo "Total Memory Allocated is $((ms-tmp))"
# read var
# [ ${var,,} = 'y' ] && echo 'YES' || echo 'NO'


# read -p "Enter the block size (in Bytes) -- " bs



# nob=$((ms/bs))
# ef=$((ms-nob*bs))
# # echo "$nob $ef $ms $bs"

# read -p "Enter the number of processes -- " processNo

# i=0
# while [ $i -lt $processNo ]
# do
#     read -p "Enter memory required for process $i (in Bytes) --" mp[i]
#     ((i++))
# done

# echo -e "\n No. of Blocks available in memory -- $nob"
# echo -e "\n PROCESS\tMEMORY REQUIRED\t ALLOCATED\tINTERNAL FRAGMENTATION"
# p=0
# for (( i=0; i<$processNo && p<$nob; i++))
# do
#     temp=$i+1
#     echo -e "\n $temp  \t\t${mp[i]}"
#     if [[ mp[i] -gt bs ]]
#     then
#         echo -e "\t\t NO\t\t---"
#     else
#         echo -e "\t\t YES\t\t $((bs-mp[i]))"
#         tif=$((tif+bs-mp[i]))
#         ((p++))
#     fi
# done

# if [[ $i -lt $processNo ]]
# then
#     echo -e "\t\t Memory is Full, Remaining Process cannot be accomdated"
# fi

# echo -e "\n\n Total Internal Fragmentation is $tif"
# echo -e "\n Total External Fragmentation is $ef"

