#!/bin/bash


SERVICE_URL=http://localhost:80

# To Get Only status number (200)
RESPOSE=$(curl -o /dev/null -s -w "%{http_code}" $SERVICE_URL)

#  http://localhost
# curl --write-out '%{http_code}' --silent --output /dev/null

if [ $RESPOSE = 200 ]
then
    echo Service Is Running.
    exit 0
else
    echo Starting Service.....
    docker-compose up -d
    sleep 2
    echo Done
fi