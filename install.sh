#!/bin/bash
if [ "$SHELL" = "/usr/bin/zsh" ];then
RC_FILE=~/.zshrc
elif [ "$SHELL" = "/bin/bash" ];then
RC_FILE=~/.bashrc
else
echo -e "\033[31m Unknow shell! Please configure manually \033[0m"
exit 1;
fi

echo -e "\033[32m configure in $RC_FILE \033[0m"

# +x
find . -name "*.sh" | xargs chmod +x
# set path
COMMON=$PWD/common
DOCKER=$PWD/docker
KUBECTL=$PWD/kubectl
echo "#bash util path" >> $RC_FILE
echo export PATH='$PATH':$COMMON:$DOCKER:$KUBECTL >> $RC_FILE
echo -e "\033[32m install success \033[0m"
# new shell
$SHELL

# 直接运行以安装所有脚本
