#!/bin/bash

USERID=$(id -u) #if 0 super user
if [ $USERID -ne 0 ]
   then 
       echo "please run this script with root access"
       exit 1
fi       
dnf install mysql -y
echo "is script proceeding?"