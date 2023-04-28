#!/bin/bash 
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
#Test if the first number is big 
if [[ $num1 -gt $num2 ]]
then 
   echo "given number $num1 is bigger than $num2"
fi 
#Test if the number is small
if [[ $num1 -lt $num2 ]]
then
     echo "given number $num1 is smaller than $num2"
fi 
#Test if the number is equal
if [[ $num1 -eq $num2 ]]
then 
     echo "given number $num1 is equal to $num2"
fi

