#!/bin/bash
#path for yalscript
	LPATH="/root/yalscript"
	export LPATH
BP="\e[1;35m"
CE="\e[0m"

echo "Granting Permissions."
chmod +x *
echo "Checking for required packages..."
apt update
apt -y git
apt -y install figlet
apt -y install python
BACKL="0"	
PAKTC="Press$BP any key$CE to Continue"
echo "Run this script once"
chmod +x yalscript
cp yalscript /usr/bin/
clear
while true
do
echo -e "Enter the name of your wireless interface when in "$BR"managed"$CE" mode("$BY"Enter"$CE"=wlan0): "
read MANAGED
if [[ "$MANAGED" = "" ]]
then
	MANAGED="wlan0"
fi
echo -e "Enter the name of your wireless interface when in "$BR"monitor"$CE" mode("$BY"Enter"$CE"=wlan0mon): "
read MONITOR
if [[ "$MONITOR" = "" ]]
then
	MONITOR="wlan0mon"
fi
echo -e "Enter the name of your wired interface("$BY"Enter"$CE"="eth0"): "
read WIRED
if [[ "$WIRED" = "" ]]
then
	WIRED="eth0"
fi
	echo "$MANAGED" > "$LPATH"/wlan.txt
	echo "$MONITOR" > "$LPATH"/wlanmon.txt
	echo "$WIRED" > "$LPATH"/eth.txt
	echo -e ""$BY"Done"$CE""
	sleep 1
	clear
	echo -e ""$BB"If you want to change it, type "$CE""$BY"interface"$CE""$BB" any time"$CE""
	sleep 3
	echo -e "$PAKTC"
	$READAK	
	BACKL="1"
	break
done
echo "Done Setting up.."
echo 'can also run directly using "yalscript" in terminal'
