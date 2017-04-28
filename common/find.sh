# 查找.cpp or .c or .h or .hpp文件中某字段
#!/bin/bash

if [ $# -lt 1 ] ; then
echo "USAGE: $0 <find-key> <path>"
echo "e.g.:  $0 something /opt/include/"
exit 1;
fi

echo "\033[33m *-----------------------------------------------------start---line------------------------------------------------------* \033[0m"
echo
find $2 -name "*.[cChH]"  -o -name "*.[cC][pP][pP]" -o -name "*.[hH][pP][pP]" | xargs grep --color -n $1
echo
echo "\033[33m *------------------------------------------------------end---line-------------------------------------------------------* \033[0m"
