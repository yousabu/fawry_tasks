#!/bin/bash

MYOS=$(hostnamectl | awk '/Operating/ { print $3 }' )

# Install On Centos and RHEL
if [ $MYOS = "Centos" || "RHEL" ]
then
    echo Setup Docker Using Yum
fi

# Install On Ubuntu and debian

if [ $MYOS = "Ubuntu" || "Debian" ]
then
    echo Setup Docker Using Apt
fi