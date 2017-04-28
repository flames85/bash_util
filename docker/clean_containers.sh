# 清除所有已经停止的容器, 谨慎使用
#!/bin/bash

containers=`docker ps -a |awk '{print $1}' | grep "[0-9a-z]"`
if [ -z $containers ] ; then
echo "\033[31m containers not exists\033[0m"
exit 1;
fi

docker rm $containers
echo "\033[33m *---------------------------------------------------------------------------------------------* \033[0m"
docker ps -a
echo "\033[33m *---------------------------------------------------------------------------------------------* \033[0m"
