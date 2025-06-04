#!/bin/bash

# This script is for installing mysql

ID=$(id -u)

if [ $ID -ne 0 ];
then
    echo "Please run this script with root acess"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ];
then
   echo "ERROR: Installing MYSQL is failed"
   exit 1
else
  echo "Installing Mysql is success"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is success"
fi