#!/bin/bash 
#script to create user and set password fot thr same.
read -p "Enter the user name:" name
grep -w ^$name /etc/passwd>/dev/null
if [[ $? -eq 0 ]]
then 
    echo "user $name found in the system. could not create existing"
else 
read -sp "enter the password for the user name :" pass
useradd $name 
echo "$name:$pass"|chpasswd
echo -e "\nUser $name created.."
fi

#end od the script
