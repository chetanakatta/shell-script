#!/bin/bash

USERId=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}
F
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

  if [ $? -eq 0 ]
   then 
    echo -e "$i already installed..$Y skipping $N"
   else
    dnf install $i -y &>>$LOGFILE
    VALIDATE $? "installation of $i"
  fi  
 done


  