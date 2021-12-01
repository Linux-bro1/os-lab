#!/bin/bash
read -p "Enter the number of Process: " process
i=0
while [ $i -lt $process ]
do
    
    read -p "Enter the brust time of P[$i]: " bt[i]
    ps[i]=$i
    ((i++))
done


for (( i=0; i<$process; i++))
do
    for (( j=i+1; j<$process; j++))
    do
        if [[ bt[i] -gt bt[j] ]]
        then
            temp=${bt[i]}
            bt[i]=${bt[j]}
            bt[j]=$temp
            
            temp=${ps[i]}
            ps[i]=${ps[j]}
            ps[j]=$temp
            
        fi
    done
done



wt[0]=0
tat[0]=${bt[0]}

for ((i=1; i<$process; i++))
do
    wt[i]=$((tat[i-1]))
    tat[i]=$(( bt[i]+wt[i] ))
    
done


echo -e "\nProcess \t Brust Time \t Watting Time \t Turnarround Time"
i=0
while [ $i -lt $process ]
do
    echo -e "  P${ps[i]} \t\t   ${bt[i]} \t\t   ${wt[i]} \t\t   ${tat[i]}"
    ((i++))
done
