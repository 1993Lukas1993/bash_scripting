#!/bin/bash

RELEASE_FILE=/etc/os-release

if grep -q "Arch" $RELEASE_FILE
then
   # The host is based on Arch, run the pacman update command
   sudo pacman -Syu
fi

if grep -q "Debian" $RELEASE_FILE || grep -q "Ubuntu" $RELEASE_FILE
then
   # The host is based on Debian or Ubuntu, run the apt version of the command"
   sudo apt update
   sudo apt dist-upgrade
fi





