#!/bin/bash
if [ $# != 1 ] ; then
echo -e "\033[32m USAGE: $0 <container-wildcard> \033[0m"
echo -e "\033[32m e.g.:  $0 mds \033[0m"
exit 1;
fi

# 获取容器id
container=`docker ps -a| grep "$1" | head -n 1 | awk '{print $1}'`
if [ -z "$container" ] ; then
echo -e "\033[31m container not exists which <container-wildcard>=$1 \033[0m"
exit 1;
fi

docker logs $container | less


# 直接打开容器日志

