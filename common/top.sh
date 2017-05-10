#!/bin/bash
if [ $# != 1 ] ; then
echo -e "\033[32m USAGE: $0 <app-wildcard> \033[0m"
echo -e "\033[32m e.g.:  $0 sshd \033[0m"
exit 1;
fi

# 获取容器id
pid=`pgrep $1 | paste -sd"," -`
if [ -z "$pid" ] ; then
echo -e "\033[31m pid not exists which <app-wildcard>=$1 \033[0m"
exit 1;
fi

top -p $pid

# 直接打开容器日志

