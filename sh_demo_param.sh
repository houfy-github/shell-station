#!/bin/bash
# author:houfy

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";
echo "参数个数为：$#";

echo "引用所有参数作为一个字符串：$*";
echo "-- \$* 演示 --"
for i in "$*";do
	echo $i
done

echo "引用所有参数作为单独字符串：$@";
echo "-- \$@ 演示"
for i in "$@";do
	echo $i
done

echo "当前脚本运行的进程ID：$$";
echo "最后命令的退出状态:$?";

if [ -n "$1" ]; then
	echo "包含第一个参数"
else
	echo "不包含第一个参数"
fi
