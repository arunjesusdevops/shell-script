#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE (){
if [ $1 -ne 0 ]
then
    echo -e "$R Error::  $2 ... failed"
    exit 1
else
    echo -e "$2 ..$G success"
fi
}

if [ $ID -ne 0 ];
then
    echo -e "$R ERROR:: Please run the script with root access"
    exit 1 
else
    echo -e "$N You are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? Installing MYSQl

yum install git -y &>> $LOGFILE

VALIDATE $? Installing GIT
