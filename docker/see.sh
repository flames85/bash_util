#!/bin/bash
if [ $# != 1 ] ; then
echo -e "\033[32m USAGE: $0 <container-wildcard> \033[0m"
echo -e "\033[32m e.g.:  $0 mds \033[0m"
exit 1;
fi

docker ps | grep $1 


# 直接打开容器日志

