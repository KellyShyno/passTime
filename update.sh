#!/bin/bash
#KellyShyno
#passTime

echo "";
echo -e "\e[1;33mUpdating passTime program..\e[0m";
echo "";
mkdir tmp
cd tmp
#reload repository
git clone https://github.com/KellyShyno/passTime
cd passTime
chmod -R a+rx *
cp -r * ../../
cd ../../
rm -rf tmp
echo "";
echo -e "\e[1;32mUpdating complete\e[0m";
#break a leg (&_&)
