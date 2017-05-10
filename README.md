### linux下便捷脚本

#### 1. 部署

```bash
cd bash_util
./install
```

#### 2. 主要docker脚本

1. 进入某容器内部
```bash
into.sh $container-wildcard
```
比如:
```bash
into.sh mds
```
2. 打开当前运行的某容器日志(好处是可以实时刷新日志, 缺点是阅览速度可能比较慢)
```bash
log.sh $container-wildcard
```
比如:
```bash
log.sh mds
```
3. 导出并打开当前运行的某容器日志(好处是阅览很快, 缺点是无法实时刷新)
```bash
output.sh $container-wildcard
```
比如:
```bash
output.sh mds
```
4. 查看当前运行的某容器的系统占用
```bash
stats.sh $container-wildcard
```
比如:
```bash
stats.sh mds
```
5. 启动并进入一个已经停止的容器, 但补运行容器默认的CMD(比如因为容器崩溃导致容器停止, 我们尝试进入查看core文件)
```bash
start_dead_container.sh $container_id $new_image_name
```
比如:
```bash
start_dead_container.sh d3fc541b90bc crash_mds_01
```

6. 打开并筛选某个容器的日志
```bash
grep.sh mds "ERROR"
```

7. 实时打开并筛选某个容器的日志
```bash
tail.sh mds "ERROR"
```
####  2. 主要common脚本
1. 搜索源码中某个字段
```bash
find_code.sh “some_func”
```
2. 更新host文件
```bash
update_hosts.sh
```
3. top筛选某进程
```bash
top.sh chrome
```

#### 3. 主要kubectl脚本
1. 查看某pod所处的host位置或pod的详细信息
host位置：
```bash
where_is_pod.sh tas
```
pod的详细信息:
```bash
where_is_pod.sh tas -
```