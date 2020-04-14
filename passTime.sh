#!/bin/bash
#KellyShyno
#passTime

trap '' 2 15 20
#nix

  if [[ -n `pgrep sleep` ]]; then
echo "";
echo -e "\e[1;35mtime-out already set\e[0m";
echo -e "\e[1;33mdisable the old time-out to start a new one..\e[0m";
exit 0;

  else
#choosing termux or some linux distros
               if [ -f /data/data/com.termux/files/usr/bin/bash ]; then
cd data/scripts && ./termuxTime.sh;
#toward termux script

               else
cd data/scripts && ./linuxTime.sh;
#toward linux script
               fi
  fi;
