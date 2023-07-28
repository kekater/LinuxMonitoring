#!/bin/bash

. color.config

default1=0
default2=0
default3=0
default4=0

if [ -z "$column1_background" ]; then 
    default1=1
    column1_background=2 
fi

case $column1_background in # фон
    1) BACKGROUND="\e[107m";;
    2) BACKGROUND="\e[41m" ;;
    3) BACKGROUND="\e[42m" ;;
    4) BACKGROUND="\e[44m" ;;
    5) BACKGROUND="\e[45m" ;;
    6) BACKGROUND="\e[40m" ;;
esac

if [ -z "$column1_font_color" ]; then 
    default2=1
    column1_font_color=4
fi

 case $column1_font_color in
    1) TEXT="\e[97m" ;;
    2) TEXT="\e[31m" ;;
    3) TEXT="\e[32m" ;;
    4) TEXT="\e[34m" ;;
    5) TEXT="\e[35m" ;;
    6) TEXT="\e[30m" ;;
esac

if [ -z "$column2_background" ]; then 
    default3=1
    column2_background=5
fi

 case $column2_background in #фон
    1) BACKGROUND2="\e[107m";;
    2) BACKGROUND2="\e[41m" ;;
    3) BACKGROUND2="\e[42m" ;;
    4) BACKGROUND2="\e[44m" ;;
    5) BACKGROUND2="\e[45m" ;;
    6) BACKGROUND2="\e[40m" ;;
esac

if [ -z "$column2_font_color" ]; then 
    default4=1
    column2_font_color=1
fi

 case $column2_font_color in
    1) TEXT2="\e[97m" ;;
    2) TEXT2="\e[31m" ;;
    3) TEXT2="\e[32m" ;;
    4) TEXT2="\e[34m" ;;
    5) TEXT2="\e[35m" ;;
    6) TEXT2="\e[30m" ;;
esac

END="\e[0m \e[0m"
