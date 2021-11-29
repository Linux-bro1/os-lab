#!/bin/bash
read -p "Enter the number of Process: " process
i=0
while [ $i -lt $process ]
do
    read -p "Enter the brust time: " bt[i]
    ((i++))
done

wt[0]=0
tat[0]=${bt[0]}

# i=1

# while [ $i -lt $process ]
for ((i=1; i<$process; i++))
do
    wt[i]=$((tat[i-1]))
    tat[i]=$(( bt[i]+wt[i] ))
    # ((i++))
done
for (( i=0; i<$process; i++))
do
    for (( j=i+1; i<$process; j++))
    do
        if [[ bt[i] -lt bt[j] ]]
        then
            temp=${bt[i]}
            bt[i]=
        fi
    done
done

echo -e "\nProcess \t Brust Time \t Watting Time \t Turnarround Time"
i=0
while [ $i -lt $process ]
do
    echo -e "  P$i \t\t   ${bt[i]} \t\t   ${wt[i]} \t\t   ${tat[i]}"
    ((i++))
done



# echo "${bt[@]} ${wt[@]} ${tat[@]}"