#!/bin/bash
File=/home/ubuntu/app/index.js
if test -f "$File"; then
   echo "$File exists"
   cd /home/ubuntu
   pm2 stop --slient index.js
   pm2 delete index.js
   killall -9 node
else
   echo "$File does not exist."
fi 
cd /home/ubuntu
sudo rm -rf app
sudo mkdir app