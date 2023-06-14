#!/bin/bash

# Запит першого рядка
echo "Введіть перший рядок:"
read -r first_string

# Запит другого рядка
echo "Введіть другий рядок:"
read -r second_string

# Порівняння рядків
if [ "$first_string" = "$second_string" ]; then
    echo "Рядки є однакові."
else
    echo "Рядки не є однаковими."
fi
