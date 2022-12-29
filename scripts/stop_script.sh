#!/bin/bash

cd /app/

process_status=$( pm2 list | grep 'app' | awk '{print$18}')
if [ $process_status == 'online' ]
then
        pm2 stop app
        echo "process stopped successfully"
else
        echo "no process was running"
fi
rm -rf /app/*
