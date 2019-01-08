#!/bin/bash


echo "设置Jenkins默认端口================="


echo "显示当前Jenkins 端口配置============"
defaults read /Library/Preferences/org.jenkins-ci

echo "newHope123" | sudo -S defaults write /Library/Preferences/org.jenkins-ci httpPort $1

echo "显示更新后的Jenkins 端口配置========"
defaults read /Library/Preferences/org.jenkins-ci
