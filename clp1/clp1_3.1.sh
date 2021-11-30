Md Osama Bin Nur
#! /bin/bash
read -p "Enter the number: " num
len=${#num}
num1=0
num2=0
num3=0
num4=0
num5=0
num6=0
num7=0
num8=0
num9=0
num0=0
for ((i=0; i<$len; i++))
do
if [ ${num:i:1} == 1 ]
then
(( num1++ ))
fi
if [ ${num:i:1} == 2 ]
then
(( num2++ ))
fi
if [ ${num:i:1} == 3 ]
then
(( num3++ ))
fi
if [ ${num:i:1} == 4 ]
then
(( num4++ ))
fi
if [ ${num:i:1} == 5 ]
then
(( num5++ ))
fi
if [ ${num:i:1} == 6 ]
then
(( num6++ ))
fi
if [ ${num:i:1} == 7 ]
then
(( num7++ ))
fi
if [ ${num:i:1} == 8 ]
then
(( num8++ ))
fi
if [ ${num:i:1} == 9 ]
then
(( num9++ ))
fi
if [ ${num:i:1} == 0 ]
then
(( num0++ ))
fi
done

if [[ $num0 > 0 ]]
then
  echo "0 = $num0 times"
fi
if [[ $num1 > 0 ]]
then
  echo "1 = $num1 times"
fi
if [[ $num2 > 0 ]]
then
  echo "2 = $num2 times"
fi
if [[ $num3 > 0 ]]
then
  echo "3 = $num3 times"
fi
if [[ $num4 > 0 ]]
then
  echo "4 = $num4 times"
fi
if [[ $num5 > 0 ]]
then
  echo "5 = $num5 times"
fi
if [[ $num6 > 0 ]]
then
  echo "6 = $num6 times"
fi
if [[ $num7 > 0 ]]
then
  echo "7 = $num7 times"
fi
if [[ $num8 > 0 ]]
then
  echo "8 = $num8 times"
fi
if [[ $num9 > 0 ]]
then
  echo "9 = $num9 times"
fi