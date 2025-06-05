#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>>LOGFILE

VALIDATE (){
if [ $1 -ne 0 ]
then
    echo -e "$R Error::  $2 ... failed$N"
    exit 1
else
    echo -e "$2 ..$G success$N"
fi
}

if [ $ID -ne 0 ];
then
    echo -e "$R ERROR:: Please run the script with root access $N"
    exit 1 
else
    echo -e "You are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? Installing MYSQl

yum install git -y &>> $LOGFILE

VALIDATE $? Installing GIT
