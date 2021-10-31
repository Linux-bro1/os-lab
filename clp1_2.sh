#! /bin/bash
read -p "Enter 7-digit number: " num

for (( i=1; i<7; i+=2 ))
do
echo ${num:i:1}
done