#!/bin/bash

APP="youssef"
REPO="https://github.com/yousabu/CICD-Kube-Docker.git"
BRANCH="main"

git clone -b $BRANCH --depth=1 $REPO $APP
cd  ./$APP

git checkout main
docker build . -t $APP:$(date +"%d-%m-%y")

docker login registry.gitlab.com -u <USER> -p <PASSWORD>
docker push $APP:$(date +"%d-%m-%y")


echo "Done"