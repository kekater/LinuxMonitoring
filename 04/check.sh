#!/bin/bash

if [ "$column1_background" = "$column1_font_color" ] || [ "$column2_background" = "$column2_font_color" ]; then
    echo "Цвет текста и цвет фона совпали! Внесите изменения в color.config."
    exit 1

fi

if [[ $column1_background != [1-6] ]]; then
    echo "Неверные параметры. Введите параметры от 1 до 6."
    exit 1
fi
if [[ $column1_font_color != [1-6] ]]; then
    echo "Неверные параметры. Введите параметры от 1 до 6."
    exit 1
fi
if [[ $column2_background != [1-6] ]]; then
    echo "Неверные параметры. Введите параметры от 1 до 6."
    exit 1
fi
if [[ $column2_font_color != [1-6] ]]; then
    echo "Неверные параметры. Введите параметры от 1 до 6."
    exit 1
fi