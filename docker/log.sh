# 直接打开容器日志
#!/bin/bash
if [ $# != 1 ] ; then
echo "\033[32m USAGE: $0 <image> \033[0m"
echo "\033[32m e.g.:  $0 mds \033[0m"
exit 1;
fi

# 获取容器id
container=`docker ps | grep $1 | head -n 1 | awk '{print $1}'`
if [ -z $container ] ; then
echo "\033[31m container not exists which image=<$1> \033[0m"
exit 1;
fi

docker logs $container | less
