#!/bin/bash
echo "Введите формат файла: "
read extention
echo "Введите каталог: "
read directory
count=$(find "$directory" -name "*.$extention" -type f | wc -l)
echo "$count $extention файлов в каталоге $directory"
