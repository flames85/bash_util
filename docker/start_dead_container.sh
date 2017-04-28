#!/bin/bash
if [ $# != 2 ] ; then
echo -e "\033[32m USAGE: $0 <container> <image> \033[0m"
echo -e "\033[32m e.g.:  $0 d3fc541b90bc test_mds \033[0m"
exit 1;
fi

docker commit $1 $2
docker run -v $PWD:/out --rm -it $2 bash