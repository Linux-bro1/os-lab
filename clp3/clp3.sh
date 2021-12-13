#!/bin/bash
read -p "Enter the number of Process: " process
i=0

while [ $i -lt $process ]
do
    ps[i]=$((i+1))
    read -p "Enter the brust time & priority of process P[$i]: " bt[i] pri[i]
    ((i++))
done

echo -e "Brust time: ${bt[@]} \nPriority: ${pri[@]}"

for (( i=0; i<$process; i++))
do
    for (( j=i+1; j<$process; j++))
    do
        if [[ pri[i] -gt pri[j] ]]
        then
            temp=${ps[i]}
            ps[i]=${ps[j]}
            ps[j]=$temp
            
            temp=${bt[i]}
            bt[i]=${bt[j]}
            bt[j]=$temp
            
            temp=${pri[i]}
            pri[i]=${pri[j]}
            pri[j]=$temp
            
        fi
    done
done

echo -e "Process: ${ps[@]}\nBrust time: ${bt[@]} \nPriority: ${pri[@]}"


for (( i=0; i<$process-1; i++))
do
    echo -e "${pri[i]} ${pri[i+1]}"
    if [[ pri[i] -eq pri[i+1] && bt[i] -gt bt[i+1] ]]
    then
        echo "condition satisfied"
        temp=${pri[i]}
        pri[i]=${pri[i+1]}
        pri[i+1]=$temp
        
        temp=${bt[i]}
        bt[i]=${bt[i+1]}
        bt[i+1]=$temp
        
        temp=${ps[i]}
        ps[i]=${ps[i+1]}
        ps[i+1]=$temp
        
        
    fi
done

echo -e "Process: ${ps[@]}\nBrust time: ${bt[@]} \nPriority: ${pri[@]}"


wt[0]=0
tat[0]=${bt[0]}

for ((i=1; i<$process; i++))
do
    wt[i]=$((tat[i-1]))
    tat[i]=$(( bt[i]+wt[i] ))
    
done


echo -e "\nProcess \tPriority \t Brust Time \t Watting Time \t Turnarround Time"
i=0
while [ $i -lt $process ]
do
    totalwt=$((totalwt+wt[i]))
    totaltat=$((totaltat+tat[i]))
    echo -e "  P${ps[i]} \t\t    ${pri[i]}\t\t  ${bt[i]} \t\t ${wt[i]} \t\t   ${tat[i]}"
    ((i++))
done

echo -e "Average waiting Time ---> $((totalwt/process))"
echo -e "Average Turnarround Time ---> $((totaltat/process))"