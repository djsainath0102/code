#!/bin/bash
#Create users
uid=8501
for i in `cat /root/users.txt`
do
  userdel -r $i
  useradd -M -u  $uid $i
  if [ $? -ne 0 ]
  then
    echo "$i user could not be created"
  else
  echo $i:$i|chpasswd
  fi
  ((uid++))
done

