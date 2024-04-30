#!/bin/bash

# Date and Time
echo "		#######################################################
		# Server Monitoring Report - $(date +%c) #
		#######################################################"

echo "## Weather"
curl -s wttr.in/?format=3
temp=$(curl -s wttr.in/?format=3 | awk '{print $4}' | grep -o '[0-9]*')
if [ "$temp" -gt 15 ]; then
    echo "Don't forget to touch grass after your computer work, it's a good day to be alive :D"
else
    echo "Maybe the weather will be better tomorrow :("
fi

# Services
echo ""
echo "## State of your services"
systemctl --type=service | grep -E -i 'lidarr|sonarr|radarr|transmission|jackett|samba|wg|monitorix|mediacenter|cron|description|nginx'

# Internet Connectivity
echo ""
echo "## This Month's Bandwidth Usage
Bandwidth Usage: $(vnstat -m | grep `date +%b` | awk '{print $8, $9}') / 6 TB "

# IP Addresses
echo ""
echo "## IP Addresses"
echo "  Local IP: $(neofetch | grep Local | awk '{print $3}')"
# echo "  Public IP: $(curl -s https://ipchicken.com | egrep -o '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}')"
echo "  Public IP: $(curl -s https://ipaddress.sh)"

# Memory Usage
echo ""
echo "## Memory Usage"
memused=$(neofetch | grep Memory | awk '{print $2}' | sed 's/[A-Za-z]*//g')
memtot=$(neofetch | grep Memory | awk '{print $4}' | sed 's/[A-Za-z]*//g')
# result=`expr $memtot - $memused / $memtot * 100`
echo "Memory: $(neofetch | grep Memory | awk '{print $2, $3, $4}')"
# echo "Left: $result%"

# CPU Usage
echo ""
echo "## CPU Usage"
sar -P ALL -h 0 | tail -n +3 | tr -s ' ' | tr '[:lower:]' '[:upper:]' | cut -d ' ' -f 2,3,5,8 | sed -e '1 a \ ' -e 's/ALL/\*/g' | column -tes ' '

# Storage Usage
echo ""
echo "## Storage Usage"
percentage=$(df -h /dev/sdb1 | awk 'NR>1 {print $5}')
left=$(df -h /dev/sdb1 | awk 'NR>1 {print $4}')
echo "Used: $percentage"
echo "Left: $left"

# Uptime
echo ""
echo "## Uptime"
uptime | awk '{print $3,$4}' | cut -f1 -d,

# Torrent List
echo ""
echo "## Torrent List"
transmission-remote -l | awk '{print $10, $9}'