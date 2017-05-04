#!/bin/bash
if [ $# -lt 1 ] ; then
echo -e "\033[32m USAGE: $0 <container-wildcard> <log> \033[0m"
echo -e "\033[32m e.g.:  $0 mds out \033[0m"
exit 1;
fi

# 假如有2个参数, 那么第二个参数是output名称, 如果没有,则将第一个参数作为output名称
output=$2
if [ -z $outout ] ; then
output=$1
echo "output=$output.log"
fi

# 获取容器id
container=`docker ps -a | grep $1 | head -n 1 | awk '{print $1}'`
if [ -z $container ] ; then
echo -e "\033[31m container not exists which <container-wildcard>=$1 \033[0m"
exit 1;
fi

docker logs $container | cat > $output.log
less $output.log


# 容器日志写入文件并打开
