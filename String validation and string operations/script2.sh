#!/bin/bash

# Запит першого рядка
echo "Введіть перший рядок:"
read -r first_string

# Запит другого рядка
echo "Введіть другий рядок:"
read -r second_string

# Визначення довжини кожного рядка
first_length=${#first_string}
second_length=${#second_string}

# Порівняння довжини рядків
if [ "$first_length" -gt "$second_length" ]; then
    echo "Перший рядок довший за другий."
elif [ "$first_length" -lt "$second_length" ]; then
    echo "Другий рядок довший за перший."
else
    echo "Рядки мають однакову довжину."
fi
