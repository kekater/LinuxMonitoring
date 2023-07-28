#!/bin/bash


if [ -z "$1"  ] || [ "$#" -ne 4 ]; then # Ключ -z в if используется для проверки переменной на пустую строку
    echo "Неверное количество параметров. Повторно вызовите скрипт и введите 4 параметра (от 1 до 6)."
    exit 1
    elif [ "$1" = "$2" ] || [ "$3" = "$4" ]; then
    echo "Цвет текста и цвет фона совпали! Повторно вызовите скрипт и введите 4 параметра (от 1 до 6)."
    exit 1
fi

for var in "$@"
    do
    if [[ $var != [1-6] ]]; then
        echo "Неверные параметры. Введите параметры от 1 до 6."
    exit 1
    fi
done

 case $1 in # фон
    1) BACKGROUND="\e[107m";;
    2) BACKGROUND="\e[41m" ;;
    3) BACKGROUND="\e[42m" ;;
    4) BACKGROUND="\e[44m" ;;
    5) BACKGROUND="\e[45m" ;;
    6) BACKGROUND="\e[40m" ;;
esac

 case $2 in
    1) TEXT="\e[97m" ;;
    2) TEXT="\e[31m" ;;
    3) TEXT="\e[32m" ;;
    4) TEXT="\e[34m" ;;
    5) TEXT="\e[35m" ;;
    6) TEXT="\e[30m" ;;
esac

 case $3 in #фон
    1) BACKGROUND2="\e[107m";;
    2) BACKGROUND2="\e[41m" ;;
    3) BACKGROUND2="\e[42m" ;;
    4) BACKGROUND2="\e[44m" ;;
    5) BACKGROUND2="\e[45m" ;;
    6) BACKGROUND2="\e[40m" ;;
esac

 case $4 in
    1) TEXT2="\e[97m" ;;
    2) TEXT2="\e[31m" ;;
    3) TEXT2="\e[32m" ;;
    4) TEXT2="\e[34m" ;;
    5) TEXT2="\e[35m" ;;
    6) TEXT2="\e[30m" ;;
esac

END="\e[0m \e[0m"