#!/bin/bash

TIMEZONE=$(echo -e $(cat /etc/timezone) ""$(date +%z))
USER=$(echo -e $(whoami))
OS=$(echo -e $(lsb_release -d | awk '{print $2, $3, $4}'))
DATE=$(echo -e """$(date "+%e %B %Y %T")""")
UPTIME=$(echo -e $(uptime -p))
UPTIME_SEC=$(echo -e $(cat /proc/uptime | cut -d' ' -f1))
IP=$(echo -e $(hostname -I))
MASK=$(echo -e $(ifconfig | grep "netmask" | awk '{print $4; exit}'))
RAM_TOTAL=$(echo -e $(cat /proc/meminfo | grep -i 'memtotal' | awk '{printf "%.3f GB", $2/1048576}'))
RAM_USED=$(echo -e $(free -m |grep "Mem" | awk '{printf "%.3f GB", $3/1024}'))
RAM_FREE=$(echo -e $(cat /proc/meminfo | grep -i 'memfree' | awk '{printf "%.3f GB\n", $2/1048576}'))
SPACE_ROOT=$(echo -e $(df -k | grep "/$" | awk '{printf "%.2f MB\n", $2/1024}'))
SPACE_ROOT_USED=$(echo -e $(df -k | grep "/$" | awk '{printf "%.2f MB\n", $3/1024}'))
SPACE_ROOT_FREE=$(echo -e $(df -k | grep "/$" | awk '{printf "%.2f MB\n", $4/1024}'))

