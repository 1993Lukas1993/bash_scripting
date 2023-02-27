#!/bin/bash

RELEASE_FILE=/etc/os-release
LOGFILE=/var/log/updater.log
ERRORLOG=/var/log/updater_errors.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $ERRORLOG file."
    fi      
}



if grep -q "Arch" $RELEASE_FILE
then
   # The host is based on Arch, run the pacman update command
   sudo pacman -Syu 1>>$LOGFILE 2>>$ERRORLOG
   check_exit_status
fi

if grep -q "Debian" $RELEASE_FILE || grep -q "Ubuntu" $RELEASE_FILE
then
   # The host is based on Debian or Ubuntu, run the apt version of the command"
   sudo apt update -y 1>>$LOGFILE 2>>$ERRORLOG
   check_exit_status

   sudo apt dist-upgrade -y  1>>$LOGFILE 2>>$ERRORLOG
   check_exit_status
fi





