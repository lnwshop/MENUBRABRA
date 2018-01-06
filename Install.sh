#!/bin/bash

# go to root
cd

# download script
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/lnwshop/VIP-SCRIPT/menu.sh"

echo "0 0 * * * root /sbin/reboot" > /etc/cron.d/reboot

chmod +x menu

# finishing
cd
chown -R www-data:www-data /home/vps/public_html
service nginx start
service openvpn restart
service cron restart
service ssh restart
service dropbear restart
service squid3 restart
service webmin restart
rm -rf ~/.bash_history && history -c
echo "unset HISTFILE" >> /etc/profile

cd
rm -f /root/Install.sh
