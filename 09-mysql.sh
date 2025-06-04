#!/bin/bash

# This script is for installing mysql

ID=$(id -u)

if [ $ID -ne 0 ];
then
    echo "Please run this script with root acess"
else
    echo "you are root user"
    