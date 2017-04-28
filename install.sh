#!/bin/bash
if [ "$SHELL" = "/usr/bin/zsh" ];then
RC_FILE=~/.zshrc
elif [ "$SHELL" = "/bin/bash" ];then
RC_FILE=~/.bashrc
else
echo -e "\033[32m Unknow shell! Please configure manually \033[0m"
exit 1;
fi

echo -e "\033[32m configure in $RC_FILE \033[0m"

COMMON=$PWD/common
DOCKER=$PWD/docker
echo "#bash util path" >> $RC_FILE
echo export PATH='$PATH':$COMMON:$DOCKER >> $RC_FILE
echo -e "\033[32m install success \033[0m"
$SHELL

# 直接运行以安装所有脚本
