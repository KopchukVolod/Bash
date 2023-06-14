#!/bin/bash

# Перевірка, чи було передано два рядки як аргументи командного рядка
[[ $# -lt 2 ]] && \
    echo "Usage: Give two strings as arguments" && exit 1

# Присвоєння аргументів командного рядка змінним str1 та str2
str1=$1
str2=$2

# Перевірка, чи перший рядок має нульову довжину
echo "Is string 1 zero length? Value of 1 means FALSE"
[ -z "$str1" ]
echo $?
# Зауважте, що умова [ -z "$str1" ] перевіряє, чи має змінна str1 нульову довжину
# Значення 1 означає, що умова невірна (рядок не має нульової довжини)

# Перевірка, чи другий рядок має ненульову довжину
echo "Is string 2 nonzero length? Value of 0 means TRUE;"
[ -n $str2 ]
echo $?
# Зауважте, що умова [ -n $str2 ] перевіряє, чи має змінна str2 ненульову довжину
# Значення 0 означає, що умова вірна (рядок має ненульову довжину)

# Визначення довжини першого рядка
len1=${#str1}

# Визначення довжини другого рядка
len2=${#str2}

# Виведення довжини першого та другого рядків
echo length of string1 = $len1, length of string2 = $len2

# Порівняння довжин двох рядків
if [ $len1 -gt $len2 ]
then
    echo "String 1 is longer than string 2"
else
    if [ $len2 -gt $len1 ]
    then
        echo "String 2 is longer than string 1"
    else
        echo "String 1 is the same length as string 2"
    fi
fi

# Порівняння двох рядків, щоб визначити, чи вони однакові
if [[ $str1 == $str2 ]]
then
    echo "String 1 is the same as string 2"
else
    if [[ $str1 != $str2 ]]
    then
        echo "String 1 is not the same as string 2"
    fi
fi
