#!/bin/bash

# Check the root user or not

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILED $N"
    else
        echo -e "$2 ....$R SUCESS $N"
    fi
}
TIMESTAMP=$(date %F-%H-%M-%S)
LOGFILE="/tmp/$0-"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

ID=$(id -u)
if [ $ID -ne 0 ];
then 
    echo -e "Error: Please run with root access"
else
    echo -e "You are the root user"
fi

#echo "All arguments passed: $@"

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then 
        yum install $package -y
        VALIDATE $? "Installation of $package"
    else
        echo -e "$package is already installed .. $Y SKKIPING $N"
    fi
done
