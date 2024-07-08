#!/bin/bash

USERId=$(id -u)
if [ $USERID -ne 0 ]
 then 
   echo "run with root access"
   exit 1
 else 
   echo "you are super user"
fi   

echo "All packages: $@"

for i in $@
 do 
   echo "packages to install: $i"
    dnf list installed $i # to chech installed in packages
 done
 
      
  