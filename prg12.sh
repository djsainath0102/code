#!/bin/bash 
#script to create user and set password fot thr same.
read -p "Enter the user name:" name
if [[ -n $name ]]
then
grep -w ^$name /etc/passwd>/dev/null
if [[ $? -eq 0 ]]
then 
    echo "user $name found in the system. could not create existing"
else 
read -sp "enter the password for the user $name :" pass
useradd $name 
echo "$name:$pass"|chpasswd
echo -e "\nUser $name created.."
fi
#if end here
else
  echo "INVALID USER NAME.. TRY AGAIN.."
fi 
#end of the script
