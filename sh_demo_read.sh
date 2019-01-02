#!/bin/bash
# auther: houfy

# read 的用法解析
# -p 输入提示文字
# -n 输入字符长度限制(达到6位，自动结束)
# -t 输入限时
# -s 隐藏输入内容



read -p "请输入一段文字:" -n 6 -t 5 -s password
echo -e "\npassword is $password"
