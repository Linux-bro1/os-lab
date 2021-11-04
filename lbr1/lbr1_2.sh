#!/bin/bash

<<comment 

    Title: Lab Report 1 (problem 2)
    Description: Write a shell program to reverse of a number except Last digit.
    Author: Amanur Rahman
    Date: 05/11/2021

comment

read -p "Enter a number: " number
temp=$(($number/10))
while [ $temp -ne 0 ]
do
	reverse=$reverse$((temp%10))
	temp=$((temp/10))
done
reverse=$reverse$((number%10))
echo "Reverse of $number is $reverse"