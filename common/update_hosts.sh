#!/usr/bin/env bash

# custom definition
add_on_head="127.0.0.1       $(hostname)\n\
192.168.29.10       k10\n\
192.168.29.15       k15\n\
192.168.29.16       k16\n\
192.168.29.17       k17\n\
0.0.0.0 account.jetbrains.com"

echo -e "\033[31mcustom head is:\033[0m"
echo -e "\033[32m$add_on_head\033[0m"
echo ""

# fetch
wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O fetched_hosts
sed -i "s/127.0.0.1	localhost/127.0.0.1 localhost\n$add_on_head\n/g" fetched_hosts

# backup
hosts_bak="hosts-$(date +%F-%H%M%S).bak"
sudo cp /etc/hosts /etc/$hosts_bak
echo -n "backup"
echo -ne "\033[33m /etc/$hosts_bak \033[0m" 
echo "ok."

# update
sudo mv fetched_hosts /etc/hosts
echo -n "update"
echo -ne "\033[32m /etc/hosts \033[0m" 
echo "success."
