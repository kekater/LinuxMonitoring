#!/bin/bash

START_TIME=$(date +%s)

if [ "$#" -ge 2 ]; then
    echo "Скрипт запускается только с одним параметром."
    exit 1
fi

if [ -z "$1"  ]; then # Ключ -z в if используется для проверки переменной на пустую строку
    echo "Не указан параметр. Параметр - это абсолютный или относительный путь до какой-либо директории."
    exit 1
fi

if ! [ -d $1 ]; then
    echo "Директория не найдена."
    exit 1
elif [ ${1: -1} != "/" ]; then
    echo "Параметр должен заканчиваться знаком '/'."
    exit 1

fi

. script.sh

END_TIME=$(date +%s)

difference=$(( $END_TIME - $START_TIME ))
echo -e "Script execution time (in seconds) = $difference"