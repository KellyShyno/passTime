#!/bin/bash
#KellyShyno
#passTime

trap '' 2 15 20
num='^[0-9]+$'


              if [[ -n `pgrep sleep` ]]; then
echo "";
echo -e "\e[1;35mtime-out already set\e[0m";
echo -e "\e[1;33mdisable the old time-out to start a new one..\e[0m";
exit 0;

              else
#bin
   if [ -d /data/data/com.termux/files/usr/etc/timekelly ]; then
#nicely
echo "";

   else
cd .. && cd off && mkdir /data/data/com.termux/files/usr/etc/timekelly && cp timeOff.sh /data/data/com.termux/files/usr/etc/timekelly;
echo "/data/data/com.termux/files/usr/etc/timekelly/timeOff.sh" > /data/data/com.termux/files/usr/bin/off;
chmod a+rx /data/data/com.termux/files/usr/bin/off;

   fi;

echo "";
echo -e "\e[1;36mThat's termux\e[0m";
echo "";
echo -e "\e[1;35menter the password to off time-out later:\e[0m";
 read fate
                if [[ $fate == "" ]]; then
echo -e "\e[1;31mError: you wrote an empty line\e[0m";
exit 0;
                else
echo $fate > /data/data/com.termux/files/usr/lib/fate.so;
echo "";
echo -e "\e[1;32m choose time-out by:\e[0m";
echo "";

echo -e "\e[1;36m0.\e[0m\e[1;33mseconds\e[0m";
echo -e "\e[1;36m1.\e[0m\e[1;33mminutes\e[0m";
echo -e "\e[1;36m2.\e[0m\e[1;33mhours\e[0m";
echo -e "\e[1;36m3.\e[0m\e[1;33mdays\e[0m";
echo "";

echo -e "\e[1;35mselect:\e[0m";
 read setTimeout
echo "";

if [[ $setTimeout =~ $num ]]; then
#choosing..

  if [[ $setTimeout == 0 ]]; then
echo -e "\e[1;36mselected seconds\e[0m";
echo "";
echo -e "\e[1;32menter the time-out for off:\e[0m";
 read timeout

    if [[ $timeout =~ $num ]]; then
echo "";
echo -e "\e[1;35myour shell will be disabled after\e[0m" $timeout "\e[1;35mseconds\e[0m";
echo "";
echo -e "\e[1;36mwrite\e[0m" "\e[1;31m\"off\"\e[0m" "\e[1;36min shell to disable time-out..\e[0m";
sleep $timeout && pkill -9 bash &
    else
echo -e "\e[1;31mERROR: enter the number in choosing time-out\e[0m";
exit 0;
    fi

  else

      if [[ $setTimeout == 1 ]]; then
echo -e "\e[1;36mselected minutes\e[0m";
echo "";
echo -e "\e[1;32menter the time-out for off:\e[0m";
 read timeout

    if [[ $timeout =~ $num ]]; then
echo ""
echo -e "\e[1;35myour shell will be disabled after\e[0m" $timeout "\e[1;35mminutes\e[0m";
echo "";
echo -e "\e[1;36mwrite\e[0m" "\e[1;31m\"off\"\e[0m" "\e[1;36min shell to disable time-out..\e[0m";
sleep $timeout"m" && pkill -9 bash &
    else
echo -e "\e[1;31mERROR: enter the number in choosing time-out\e[0m";
exit 0;
    fi

      else
        if [[ $setTimeout == 2 ]]; then
echo -e "\e[1;36mselected hours\e[0m";
echo "";
echo -e "\e[1;32menter the time-out for off:\e[0m";
 read timeout

    if [[ $timeout =~ $num ]]; then
echo ""
echo -e "\e[1;35myour shell will be disabled after\e[0m" $timeout "\e[1;35mhours\e[0m";
echo "";
echo -e "\e[1;36mwrite\e[0m" "\e[1;31m\"off\"\e[0m" "\e[1;36min shell to disable time-out..\e[0m";
sleep $timeout"h" && pkill -9 bash &
    else
echo -e "\e[1;31mERROR: enter the number in choosing time-out\e[0m";
exit 0;
    fi

        else
          if [[ $setTimeout == 3 ]]; then
echo -e "\e[1;36mselected days\e[0m";
echo "";
echo -e "\e[1;32menter the time-out for off:\e[0m";
 read timeout

    if [[ $timeout =~ $num ]]; then
echo ""
echo -e "\e[1;35myour shell will be disabled after\e[0m" $timeout "\e[1;35mdays\e[0m";
echo "";
echo -e "\e[1;36mwrite\e[0m" "\e[1;31m\"off\"\e[0m" "\e[1;36min shell to disable time-out..\e[0m";
sleep $timeout"d" && pkill -9 bash &
    else
echo -e "\e[1;31mERROR: enter the number in choosing time-out\e[0m";
exit 0;
    fi

          else
echo -e "\e[1;31mERROR: enter the correct number in choosing time-out\e[0m";
exit 0;

          fi

        fi

      fi

  fi


else
echo -e "\e[1;31mERROR: enter the number in choosing time-out\e[0m";
exit 0;

fi
                fi
              fi;
