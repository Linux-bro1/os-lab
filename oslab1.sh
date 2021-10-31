#!/bin/bash

<<cmnt
let a=5+6
echo $a

let "a = 6 + 8"
echo $a

let a++
echo $a


let "a = 5 * 8"
echo $a

let "a = $1 + 20"
echo $a

cmnt


echo "expr"
echo "-------------------"

	expr 5 + 4 # 9

expr "5 + 4" # 5 + 4

expr 5+4 # 5+4

expr 5 \* $1 # 60

expr $1 \/ 6 # 2

expr 11 % 2 # 1

<<cm
a=$( expr 10−3 )
echo $a # 7
cm

let a=5
((a+=6))
echo $a
