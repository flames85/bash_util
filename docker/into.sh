# into.sh
# 进入容器
#!/bin/bash
if [ $# != 1 ] ; then
echo "USAGE: $0 <image>"
echo "e.g.:  $0 mds"
exit 1;
fi
docker exec -it `docker ps | grep $1 | head -n 1 | awk '{print $1}'` bash
