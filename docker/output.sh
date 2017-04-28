#!/bin/bash
if [ $# -lt 1 ] ; then
echo "USAGE: $0 <image> <log>"
echo "e.g.:  $0 mds out"
exit 1;
fi

output=$2
if [ -z $outout ] ; then
output=$1
echo "output=$output.log"
fi

container=`docker ps | grep $1 | head -n 1 | awk '{print $1}'`


if [ -z $container ] ; then
echo "container not exists which image=<$1> "
exit 1;
fi


docker logs $container | cat > $output.log
less $output.log
