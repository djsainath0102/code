#!/bin/bash 
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2
#Test if the first number is big 
if (($num1>$num2))
then 
   echo "given number $num1 is bigger than $num2"
else 
   echo "$num is not bigger than $num2"
fi 

