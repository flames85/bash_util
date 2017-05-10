#!/bin/bash
if [ $# != 2 ] ; then
echo -e "\033[32m USAGE: $0 <container-wildcard> <keywords> \033[0m"
echo -e "\033[32m e.g.:  $0 mds \"call id\" \033[0m"
exit 1;
fi

# 获取容器id
container=`docker ps | grep "$1" | head -n 1 | awk '{print $1}'`
echo "get contailer:"$container 
if [ -z "$container" ] ; then
echo -e "\033[31m container not exists which <container-wildcard>=$1 \033[0m"
exit 1;
fi

docker logs -f --tail="10" $container | grep "$2" -A 5 -B 5 --color


# 动态显示日志

