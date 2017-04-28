# 清除所有临时images
#!/bin/bash
docker rmi $(docker images -f "dangling=true" -q) -f
echo "-------------------------------------------------"
docker images
