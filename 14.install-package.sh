#!/bin/bash

# Check the root user or not

R="\e[31m"
G="\e[32m"
N="\e[0m"

ID=$(id -u)
if [ $ID -ne 0 ];
then 
    echo -e "Error: Please run with root access"
else
    echo -e "You are the root user"
fi

echo "All arguments passed: $@"
