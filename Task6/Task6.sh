#!/bin/bash

SERVICE_NAME=docker.socket
SERVICE_PID=$(ps aux |grep $SERVICE_NAME | awk '/youssef/ { print $2 }')
re='^[0-9]+$'

if [[ "${UID}" -ne 0 ]]
then
   echo 'Please run with sudo or as root.'
   exit 1
elif [[ $SERVICE_PID =~ $re ]]
then
    echo No $SERVICE_NAME Running.
    exit 1
else
    kill -9 $SERVICE_PID > /dev/null 2>&1
    #killall $SERVICE_NAME
    echo $SERVICE_NAME Killed Successfuly.
    exit 1
fi
exit 0
