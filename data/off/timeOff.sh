#!/bin/bash
#KellyShyno
#passTime

trap '' 2 15 20

echo "";
echo -e "\e[1;35moff the time-out\e[0m";
echo "";
echo -e "\e[1;33menter the password:\e[0m";
  read pass;

 if [[ -n `pgrep sleep` ]]; then

    if [ -f /data/data/com.termux/files/usr/bin/bash ]; then
fate=`cat /data/data/com.termux/files/usr/lib/fate.so`;
        if [[ $pass == $fate ]]; then
pkill -9 sleep &
echo "";
echo -e "\e[1;36mtime-out has been disabled..\e[0m";
exit 0;
        else
echo "";
echo -e "\e[1;31mError: wrong password\e[0m";
exit 0;
        fi

    else
fat=`cat /lib/fate.so`;
            if [[ $pass == $fat ]]; then
pkill -9 sleep &
echo "";
echo -e "\e[1;36mtime-out has been disabled..\e[0m";
exit 0;
            else
echo "";
echo -e "\e[1;31mError: wrong password\e[0m";
exit 0;
            fi

    fi

 else
echo "";
echo -e "\e[1;31mError: time-out didn't start yet..\e[0m";

 fi;
