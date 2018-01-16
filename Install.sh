#!/bin/bash

# go to root
cd

echo -e "\033[1;35m"
# download script
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/lnwshop/z/master/menu.sh"
wget -O 1 "https://raw.githubusercontent.com/lnwshop/z/master/adduser.sh"
wget -O 2 "https://raw.githubusercontent.com/lnwshop/z/master/testuser.sh"
wget -O 3 "https://raw.githubusercontent.com/lnwshop/z/master/rename.sh"
wget -O 4 "https://raw.githubusercontent.com/lnwshop/z/master/repass.sh"
wget -O 5 "https://raw.githubusercontent.com/lnwshop/z/master/delet.sh"
wget -O 6 "https://raw.githubusercontent.com/lnwshop/z/master/deletuserxp.sh"
wget -O 7 "https://raw.githubusercontent.com/lnwshop/z/master/viewuser.sh"
wget -O 8 "https://raw.githubusercontent.com/lnwshop/z/master/restart.sh"
wget -O 9 "https://raw.githubusercontent.com/lnwshop/z/master/speedtest.py"
wget -O 10 "https://raw.githubusercontent.com/lnwshop/z/master/online.sh"
wget -O 11 "https://raw.githubusercontent.com/lnwshop/z/master/viewlogin.sh"
wget -O 12 "https://raw.githubusercontent.com/lnwshop/z/master/aboutsystem.sh"
wget -O 13 "https://raw.githubusercontent.com/lnwshop/z/master/lock.sh"
wget -O 14 "https://raw.githubusercontent.com/lnwshop/z/master/unlock.sh"
wget -O 15 "https://raw.githubusercontent.com/lnwshop/z/master/httpinstall.sh"
wget -O 16 "https://raw.githubusercontent.com/lnwshop/z/master/httpcredit.sh"
wget -O 17 "https://raw.githubusercontent.com/lnwshop/z/master/aboutscrip.sh"
wget -O 18 "https://raw.githubusercontent.com/lnwshop/z/master/TimeReboot.sh"

echo "30 3 * * * root /sbin/reboot" > /etc/cron.d/reboot

chmod +x menu
chmod +x 1
chmod +x 2
chmod +x 3
chmod +x 4
chmod +x 5
chmod +x 6
chmod +x 7
chmod +x 8
chmod +x 9
chmod +x 10
chmod +x 11
chmod +x 12
chmod +x 13
chmod +x 14
chmod +x 15
chmod +x 16
chmod +x 17
chmod +x 18

echo -e "\033[1;36m "
# finishing

cd
rm -f /root/Install.sh
