#!/bin/bash

rm file.txt
touch file.txt
echo "Hello, world!" >> file.txt
echo "Hi, Earth!" >> file.txt
echo "Hello, Bob!" >> file.txt

while read LINE
do
    echo "Line: $LINE"
done < file.txt

echo ""

echo "Replacing Hello with Goodbye.."
sed -i 's/Hello/Goodbye/g' file.txt

echo "New contents of file.txt: "
cat file.txt
