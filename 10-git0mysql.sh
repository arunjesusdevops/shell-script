#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ];
then
    echo "ERROR:: Please run the script with root access"
    exit 1 
else
    echo "You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installing MYSQL failed"
    exit 1
else
    ehco "MySQL installed successfully"
fi

yum install git -y

if [ $? -ne 0 ;
then
    echo "Installing MYSQL Failed"
    exit 1
else
    echo "GIT installed successfully"
fi