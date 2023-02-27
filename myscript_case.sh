#!/bin/bash


FINISHED=0

while [ $FINISHED -ne 1 ]
do
echo "What is your favorite Linux distribution?"

echo "1 - Arch"
echo "2 - CentOS"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6 - Something else..."
echo "7 - Exit the script"

read DISTRO;

case $DISTRO in
    1) echo "Arch is a rolling release.";;
    2) echo "CentOS is popular on servers.";;
    3) echo "Debian is a community distribution.";;
    4) echo "Mint is popular on desktops and laptops.";;
    5) echo "Ubuntu is popular on both servers and computers.";;
    6) echo "There are many distributions out there.";;
    7) FINISHED=1 ;;
    *) echo "You did not enter appropriate choice."
esac
done

echo "Thank you for using this script."
