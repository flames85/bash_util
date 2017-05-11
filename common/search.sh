#!/bin/bash
if [ $# -eq 1 ] ; then
path=.
key=$1
elif [ $# -eq 2 ] ; then
key=$1
path=$2
else
echo -e "USAGE: $0 <find-key> <path>"
echo -e "USAGE: $0 <find-key>"
echo -e "e.g.:  $0 something /opt/include/"
exit 1;
fi

echo -e "\033[33m *--------------------------------------------------regular--start--line------------------------------------------------------* \033[0m"
echo
find $path -type f -exec grep -nHI --color "$key" {} \;
echo
echo -e "\033[33m *---------------------------------------------------regular--end--line------------------------------------------------------* \033[0m"

# 查找文件中某字段

