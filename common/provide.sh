#!/bin/bash

if [ $# != 1 ] ; then
echo -e "\033[32m USAGE: $0 <packet> \033[0m"
echo -e "\033[32m e.g.:  $0 netstat \033[0m"
exit 1;
fi

if [[ -f /usr/bin/lsb_release ]]; then
OS=$(/usr/bin/lsb_release -a |grep Description |awk -F : '{print $2}' |sed 's/^[ \t]*//g')
else
OS=$(cat /etc/issue |sed -n '1p')
fi

echo -ne "\033[33m *---------------------------------------------------------------------------------------------* \033[0m"
echo
if [[ $OS == "Ubuntu"* ]]; then
    apt-cache search $1
else
    yum provides $1
fi

echo -ne "\033[33m *---------------------------------------------------------------------------------------------* \033[0m"
echo