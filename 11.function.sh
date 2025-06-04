#!/bin/bash

VALIDATE () {
if [ $? -ne 0 ]
then
    echo "Installing failed"
    exit 1
else
    ehco "Installed successfully" 
fi
}

ID=$(id -u)

if [ $ID -ne 0 ];
then
    echo "ERROR:: Please run the script with root access"
    exit 1 
else
    echo "You are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE