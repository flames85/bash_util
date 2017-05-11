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

echo -e "\033[33m *--------------------------------------------------code--start--line------------------------------------------------------* \033[0m"
echo
#find $path -name "*.[cChH]"  -o -name "*.[cC][pP][pP]" -o -name "*.[hH][pP][pP]" | xargs grep --color -n "$key"
find $path -iregex '.*\.c\|.*\.cxx\|.*\.cpp\|.*\.h\|.*\.hpp' -exec grep -nHI --color "$key" "{}" \;
echo
echo -e "\033[33m *---------------------------------------------------code--end--line------------------------------------------------------* \033[0m"

# 查找.cpp or .c or .h or .hpp文件中某字段
