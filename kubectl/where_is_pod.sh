if [ $# -eq 0 ] ; then
echo -e "\033[32m USAGE: $0 <pod-wildcard> <match-plus> [-]\033[0m"
echo -e "\033[32m e.g.:  $0 mds -\033[0m"
echo -e "\033[32m e.g.:  $0 mds\033[0m"
exit 1;
fi

# 获取容器id
name=`kubectl get pods | grep $1 | awk '{print $1}'`
if [ -z "$name" ] ; then
echo -e "\033[31m pod not exists which <pod-wildcard>=$1 \033[0m"
exit 1;
fi

if [ "$2" == "-" ] ; then
kubectl describe pods $name | grep -w -E "*|Node:.*|Name:.*" --color
else
echo -e "\033[32m$(kubectl describe pods $name | grep -w -E 'Node:|Name:') \033[0m"
fi

# 查询pod在哪个node

