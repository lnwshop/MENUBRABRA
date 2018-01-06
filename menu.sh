#!/bin/bash
# BY HERE BIRD LNWSHOP : 097-026-7262
if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "ดูเหมือนว่าคุณไม่ได้ใช้ตัวติดตั้งนี้ในระบบ Debian, Ubuntu หรือ CentOS "
	exit
fi
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
echo -e "--------------- MENU BY 097-026-7262 : HERE BIRD LNWSHOP ---------------"
	echo ""
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU model:\e[0m $cname"
	echo -e "\e[032;1mNumber of cores:\e[0m $cores"
	echo -e "\e[032;1mCPU frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal amount of ram:\e[0m $tram MB"
	echo -e "\e[032;1mTotal amount of swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem uptime:\e[0m $up"
	echo -e "============================== "
	echo -e "คำสั่ง ทั้งหมด เลือกใช้เพียงแค่กด ตัวเลข"
	echo -e ""
	echo -e "เกี่ยวกับการสร้างบัญชี VPN SSH"
	echo -e "============================== "
	echo -e "${color1}1${color3}. ${color2} สร้างบัญชี SSH & OpenVPN${color3}"
	echo -e "${color1}3${color3}. ${color2} สร้างบัญชีทดลอง SSH & OpenVPN${color3}"
	echo -e "${color1}4${color3}. ${color2} เพิ่มเวลาที่ใช้งานของบัญชี SSH & OpenVPN${color3}"
	echo -e "${color1}5${color3}. ${color2} เปลี่ยนรหัสผ่านบัญชี SSH/OpenVPN${color3}"
	echo -e "${color1}6${color3}. ${color2} ลบบัญชี SSH & OpenVPN${color3}"
	echo -e "============================== "
	
	echo -e ""
	echo -e "เกี่ยวกับ รายละเอียดของบัญชี"
	echo -e "============================== "
	echo -e "${color1}12${color3}. ${color2}แสดงรายชื่อบัญชีทั้งหมด SSH & OpenVPN${color3}"
	echo -e "${color1}17${color3}. ${color2}ลบผู้ใช้ SSH & OpenVPN ที่หมดอายุแล้ว${color3}"
	echo -e "${color1}44${color3}. ${color2}ล็อกผู้ใช้ SSH & OpenVPN ที่หมดอายุแล้ว ${color3}"
	echo -e "============================== "
	
	echo -e ""
	echo -e "เกี่ยวกับระบบของ Server"
	echo -e "============================== "
if [[ "$OS" = 'debian' ]]; then 
	echo -e "${color1}23${color3}. ${color2}เปลี่ยน Port Dropbear${color3}"
	echo -e "${color1}24${color3}. ${color2}เปลี่ยน Port OpenVpn${color3}"
	echo -e "${color1}25${color3}. ${color2}เปลี่ยน Port OpenSSH${color3}"
	echo -e "${color1}26${color3}. ${color2}เปลี่ยน Port Squid Proxy${color3}"
	echo -e "${color1}27${color3}. ${color2}Restart OpenSSH${color3}"
	echo -e "${color1}28${color3}. ${color2}Restart Dropbear${color3}"
	echo -e "${color1}29${color3}. ${color2}Restart OpenVPN${color3}"
	echo -e "${color1}30${color3}. ${color2}Restart PPTP VPN${color3}"
	echo -e "${color1}31${color3}. ${color2}Restart Webmin${color3}"
	echo -e "${color1}32${color3}. ${color2}Restart Squid Proxy${color3}"
else
	echo -e "${color1}27${color3}. ${color2}Restart OpenSSH${color3}"
	echo -e "${color1}28${color3}. ${color2}Restart Dropbear${color3}"
	echo -e "${color1}29${color3}. ${color2}Restart OpenVPN${color3}"
	echo -e "${color1}30${color3}. ${color2}Restart PPTP VPN${color3}"
	echo -e "${color1}31${color3}. ${color2}Restart Webmin${color3}"
	echo -e "${color1}32${color3}. ${color2}Restart Squid Proxy${color3}"
fi
echo -e "${color1}33${color3}. ${color2}ตั้งค่า Auto Reboot Server${color3}"
echo -e "${color1}34${color3}. ${color2}Reboot Server${color3}"
echo -e "${color1}35${color3}. ${color2}เปลี่ยน Password VPS${color3}"
echo -e "============================== "

	echo -e ""
	echo -e "อื่นๆ เพิ่มเติม"
	echo -e "============================== "
	echo -e "${color1}36${color3}. ${color2}แก้ไขข้อความการแสดงเมื่อเชื่อมต่อ SSH${color3}"
	#echo -e "${color1}37${color3}. ${color2}แก้ไขข้อความการแสดงเมื่อเชื่อมต่อ VPS ${color3}."
	echo -e "============================== "

	echo -e ""
	echo -e "อื่นๆ เพิ่มเติม"
	echo -e "============================== "
	echo -e "${color1}38${color3}. ${color2}Speedtest${color3}"
	echo -e "${color1}39${color3}. ${color2}Benchmark${color3}"
	echo -e "${color1}40${color3}. ${color2}ดูการใช้ RAM ของเซิร์ฟเวอร์ ${color3}"
	echo -e "${color1}41${color3}. ${color2}เช็ค Bandwidth ที่ใช้ ${color3}"
	echo -e "${color1}42${color3}. ${color2}ดูรายละเอียดของการติดตั้งระบบ${color3}"
	#echo -e "${color1}44${color3}. ${color2}สร้างบัญชี Proxy${color3}"
	echo -e "${color1}43${color3}. ${color2}Update Script${color3}"
echo -e "============================== "
read -p "เลือกคำสั่งที่ต้องการ (พิมพ์เลข): " x
if test $x -eq 1; then
user-add
elif test $x -eq 2; then
user-generate
elif test $x -eq 3; then
user-trial
elif test $x -eq 4; then
user-addday
elif test $x -eq 5; then
user-password
elif test $x -eq 6; then
user-delete
elif test $x -eq 7; then
read -p "ตั้งการจำกัดการเชื่อมต่อ พิมพ์ (1-2): " MULTILOGIN
user-limit $MULTILOGIN
elif test $x -eq 8; then
log-ban
elif test $x -eq 9; then
read -p "ตั้งการจำกัดการเชื่อมต่อ พิมพ์ (1-2): " MULTILOGIN
user-ban $MULTILOGIN
elif test $x -eq 10; then
user-unban
elif test $x -eq 11; then
user-detail
elif test $x -eq 12; then
user-list
elif test $x -eq 13; then
user-login
elif test $x -eq 14; then
user-log
elif test $x -eq 15; then
infouser
elif test $x -eq 16; then
expireduser
elif test $x -eq 17; then
user-delete-expired
elif test $x -eq 18; then
user-add-pptp
elif test $x -eq 19; then
user-delete-pptp
elif test $x -eq 20; then
user-detail-pptp
elif test $x -eq 21; then
user-login-pptp
elif test $x -eq 22; then
alluser-pptp
elif test $x -eq 23; then
edit-port-dropbear
elif test $x -eq 24; then
edit-port-openvpn
elif test $x -eq 25; then
edit-port-openssh
elif test $x -eq 26; then
edit-port-squid
elif test $x -eq 27; then
	if [[ "$OS" = 'debian' ]]; then 
		service ssh restart 
	else 
		service sshd restart 
	fi
elif test $x -eq 28; then
service dropbear restart
elif test $x -eq 29; then
service openvpn restart
elif test $x -eq 30; then
	if [[ "$OS" = 'debian' ]]; then 
		service pptpd restart 
	else 
		service pptpd restart 
	fi
elif test $x -eq 31; then
service webmin restart
elif test $x -eq 32; then
	if [[ "$OS" = 'debian' ]]; then 
		service squid3 restart 
	else 
		service squid restart 
	fi
elif test $x -eq 33; then
auto-reboot
elif test $x -eq 34; then
reboot
elif test $x -eq 35; then
passwd
elif test $x -eq 36; then
nano /bannerssh
service dropbear restart && service ssh restart
elif test $x -eq 37; then
nano /usr/bin/bannermenu
elif test $x -eq 38; then
speedtest --share
elif test $x -eq 39; then
bench-network
elif test $x -eq 40; then
ram
elif test $x -eq 41; then
vnstat
elif test $x -eq 42; then
log-install
elif test $x -eq 43; then
wget 150.95.24.48/update-vip.sh -O - -o /dev/null|sh
elif test $x -eq 44; then
clear
echo ""
echo "สคริปต์นี้จะทำงานโดยอัตโนมัติทุกๆ 12 ชั่วโมง"
echo "คุณไม่จำเป็นต้องเรียกใช้ด้วยตนเอง"
sleep 10
user-expire
else
echo "ไม่พบตัวเลือกในเมนู."
exit
fi
