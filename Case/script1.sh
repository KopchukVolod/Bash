#!/bin/bash
echo "Enter month in numb form"
read -r month_name
case "$month_name" in 
1 | 01) echo "This is January";;
2 | 02) echo "This is February";;
3 | 03) echo "This is March";;
4 | 04) echo "This is April";;
5 | 05) echo "This is May";;
6 | 06) echo "This is June";;
7 | 07) echo "This is July";;
8 | 08) echo "This is August";;
9 | 09) echo "This is September";;
10 | 010) echo "This is October";;
11 | 011) echo "This is November";;
12 | 012) echo "This is December";;
*) echo "There is no such place";;
esac
