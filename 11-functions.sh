#!/bin/bash

USERID=$(id -u)

VALIDATE() {
    if [ $1 -ne 0 ]
      then
          echo "$2...failure"
      else  
          echo "$2...success"
    fi      
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE

VALIDATE $? "installing my sql"

dnf install git -y &>>$LOGFILE

VALIDATE $? "installing git"

