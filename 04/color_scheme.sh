#!/bin/bash

printColorName() {
    res=0
    case $1 in
    1) res="(white)";;
    2) res="(red)";;
    3) res="(green)";;
    4) res="(blue)";;
    5) res="(purple)";;
    6) res="(black)";;
    esac
    echo $res
}

if [ $default1 -eq 1 ]; then
echo -e "\nColumn 1 background = default $(printColorName $column1_background)"
else
echo -e "\nColumn 1 background = $column1_background $(printColorName $column1_background)"
fi

if [ $default2 -eq 1 ]; then
echo -e "Column 1 font color = default $(printColorName $column1_font_color)"
else
echo -e "Column 1 font color = $column1_font_color $(printColorName $column1_font_color)"
fi

if [ $default3 -eq 1 ]; then
echo -e "Column 2 background = default $(printColorName $column2_background)"
else
echo -e "Column 2 background = $column2_background $(printColorName $column2_background)"
fi

if [ $default4 -eq 1 ]; then
echo -e "Column 2 font color = default $(printColorName $column2_font_color)"
else
echo -e "Column 2 font color = $column2_font_color $(printColorName $column2_font_color)"
fi
