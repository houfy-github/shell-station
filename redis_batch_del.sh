#!/bin/bash



#  查看redis 的master节点地址
# ./redis-cli  cluster nodes | grep master



# 批量删除redis sh脚本

redis_cmd=/usr/local/bin/redis-cli
redis_ser01=$1
reids_port=$2
redis_password=$3
delete_pattern=$4

# -c 集群 -h主机地址 -p 端口 -a 密码 -n 库号 
# Linux
# $redis_cmd -c -h $redis_ser01 -p $reids_port -a $redis_password -n 5 keys "$delete_pattern" | xargs -i $redis_cmd -h $redis_ser01 -p $reids_port -a $redis_password -n 5 del {}
# Unix
$redis_cmd -c -h $redis_ser01 -p $reids_port -a $redis_password -n 5 keys "$delete_pattern" | xargs -I {} $redis_cmd -h $redis_ser01 -p $reids_port -a $redis_password -n 5 del '{}'
