#!/bin/bash

HOSTNAME=$(echo -e "HOSTNAME" = $(hostname))
TIMEZONE=$(echo -e "TIMEZONE" = $(cat /etc/timezone) ""$(date +%z))
USER=$(echo -e "USER" = $(whoami))
OS=$(echo -e "OS" = $(lsb_release -d | awk '{print $2, $3, $4}'))
DATE=$(echo -e "DATE" = """$(date "+%e %B %Y %T")""")
UPTIME=$(echo -e "UPTIME" = "$(uptime -p)")
UPTIME_SEC=$(echo -e "UPTIME_SEC" = $(cat /proc/uptime | cut -d' ' -f1))
IP=$(echo -e "IP" = $(hostname -I))
MASK=$(echo -e "MASK" = $(ifconfig | grep "netmask" | awk '{print $4; exit}'))
RAM_TOTAL=$(echo -e "RAM_TOTAL" = $(cat /proc/meminfo | grep -i 'memtotal' | awk '{printf "%.3f GB", $2/1048576}'))
RAM_USED=$(echo -e "RAM_USED" = $(free -m |grep "Mem" | awk '{printf "%.3f GB", $3/1024}'))
RAM_FREE=$(echo -e "RAM_FREE" = $(cat /proc/meminfo | grep -i 'memfree' | awk '{printf "%.3f GB\n", $2/1048576}'))
SPACE_ROOT=$(echo -e "SPACE_ROOT" = $(df -k | grep "/$" | awk '{printf "%.2f MB\n", $2/1024}'))
SPACE_ROOT_USED=$(echo -e "SPACE_ROOT_USED" = $(df -k | grep "/$" | awk '{printf "%.2f MB\n", $3/1024}'))
SPACE_ROOT_FREE=$(echo -e "SPACE_ROOT_FREE" = $(df -k | grep "/$" | awk '{printf "%.2f MB\n", $4/1024}'))

