#!/bin/bash

dir=~/dev/p/willie-bag/

# Build with npm
echo -e "\e[1;33mBuilding from sources\e[0m\e[0m"
cd $dir/app && npm run build

# Build with cordova
cd $dir
echo -e "\e[1;33mBuilding \e[36mBrowser\e[0m\e[0m"
cordova build browser
echo -e "\e[1;33mBuilding \e[36mAndroid\e[0m\e[0m"
cordova build android
echo -e "\e[1;37;42m Buided!\e[0m"

exit 0
