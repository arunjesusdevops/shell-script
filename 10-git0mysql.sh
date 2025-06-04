#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ];
then
    echo "ERROR:: Please run the script with root id"
else
    echo "You are with root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "MySQL not installed successfully"
    exit 1
else
    ehco "MySQL installed successfully"
fi

yum install git -y

if [ $? -ne 0 ;
then
    echo "Installed GIT no installed"
    exit 1
else
    echo "GIT installed successfully"
fi