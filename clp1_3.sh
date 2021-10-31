#! /bin/bash
read -p "Enter the number: " num
len=${#num}
num2=0
num5=0
num6=0

for ((i=0; i<$len; i++))
do
if [ ${num:i:1} == 2 ]
then
(( num2++ ))
fi
if [ ${num:i:1} == 5 ]
then
(( num5++ ))
fi
if [ ${num:i:1} == 6 ]
then
(( num6++ ))
fi
done
echo "5 = $num5 times"
echo "6 = $num6 times"
echo "2 = $num2 times"

# echo "$len"
# echo ${#num}
# myvar="some string"
# size=${#myvar} 
# echo "$size"
# echo $len
# echo $len