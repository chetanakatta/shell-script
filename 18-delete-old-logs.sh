#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ -d $SOURCE_DIRECTORY ]
then 
  echo "$G source directory exists $N"
else
  echo "$R please make sure $SOURCE_DIRECTORY exista $N"
  exit 1
fi
FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)  #to find files which are older than 14 days
echo "files to delete: $FILES"