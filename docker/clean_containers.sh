#!/bin/bash

containers=`docker ps -a |awk '{print $1}' | grep "[0-9a-z]"`
docker rm $containers
echo -ne "\033[33m *---------------------------------------------------------------------------------------------* \033[0m"
docker ps -a
echo -ne "\033[33m *---------------------------------------------------------------------------------------------* \033[0m"

# 清除所有已经停止的容器, 谨慎使用

