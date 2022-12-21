#!/bin/bash
cd /home/aadesh/node-express-realworld-example-app
pid=$(sudo pm2 pid app)
if [ $pid == 0 ]; then
   echo "Application is stopped"
else
   echo "Application is running"
   cd /home/aadesh/node-express-realworld-example-app
   sudo pm2 stop app.js
   echo "Application is stopped"
fi
