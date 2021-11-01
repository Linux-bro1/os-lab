#!/bin/bash
read -p "Enter the number: " num
len=${#num}
largest=${num[0]}

for ((i=0; i<$len; i++))
do
if (( $largest < ${num:i:0} )); then
 echo 'hi'
fi
 echo 'hello'
done

echo $largest
echo $num