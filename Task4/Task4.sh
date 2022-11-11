#!/bin/bash

MYOS=$(hostnamectl | awk '/Operating/ { print $3 }' )

# Install On Centos and RHEL
if [[ $MYOS = "Centos" || "RHEL" ]]
then
    echo Setup Docker Using Yum
    sudo yum update -y
    sudo yum upgrade -y
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install curl docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

    # Installing Docker Compose
    sudo curl -SL https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

    # Enable Service
    sudo systemctl start docker
	sudo systemctl enable --now docker
fi
echo Docker Up,Running On $MYOS.





# Install On Ubuntu and debian

if [[ $MYOS = "Ubuntu" || "Debian" ]]
then
    echo Setup Docker Using Apt
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt-get install docker curl  docker.io containerd runc -y

    # Installing Docker Compose
    sudo curl -SL https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


    # Enable Service
    sudo systemctl enable --now docker
    sudo systemctl start docker
fi



# Setup Compose
git clone https://github.com/yousabu/Backup_local_container.git
cd Backup_local_container
docker-compose up -d

echo Your Service Running on http://localhost:8083
