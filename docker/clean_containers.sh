# 清除所有已经停止的容器, 谨慎使用
#!/bin/bash
docker rm `docker ps -a |awk '{print $1}' | grep "[0-9a-z]"`
echo "-------------------------------------------------"
docker ps -a
