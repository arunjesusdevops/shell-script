#!/bin/bash
ID=$(id -u)

VALIDATE (){
if [ $1 -ne 0 ]
then
    echo "Error::  $2 ... failed"
    exit 1
else
    echo "$2 ..success"
fi
}

if [ $ID -ne 0 ];
then
    echo "ERROR:: Please run the script with root access"
    exit 1 
else
    echo "You are root user"
fi

yum install mysql -y

VALIDATE $? Installing MYSQl

yum install git -y

VALIDATE $? Installing GIT