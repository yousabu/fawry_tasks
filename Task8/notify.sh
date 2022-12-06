#!/bin/bash

while true
do
    tail -f /var/log/odoo.log &
    echo $(date +"%d-%m-%y"" %T") >>log.txt
done
