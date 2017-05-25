#!/bin/bash
if [ $# -eq 2 ] ; then
SRC=$2
DST=.
elif [ $# -eq 3 ] ; then
SRC=$2
DST=$3
else
echo -e "\033[32m USAGE: $0 <container-wildcard> \033[0m"
echo -e "\033[32m e.g.:  $0 mds /var/logs/1.log 1.log \033[0m"
exit 1;
fi

# 获取容器id
container=`docker ps | grep "$1" | head -n 1 | awk '{print $1}'`
if [ -z "$container" ] ; then
echo -e "\033[31m container not exists which image=<$1> \033[0m"
exit 1;
fi

echo "copy file from $container:$SRC to $DST"
docker cp $container:$SRC $DST

# 从容器复制文件到host

