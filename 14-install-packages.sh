#!/bin/bash

USERId=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

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
    dnf list installed $i &>>$LOGFILE # to check installed in package

  if [$? -eq 0]
   then 
    echo "$i already installed..skipping"
   else
    echo "$i not installed..need to install"
  fi  
 done


  