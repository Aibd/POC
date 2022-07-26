#!/bin/bash

#桌面无图标
gsettings set com.deepin.dde.filemanager.desktop desktop-computer false
gsettings set com.deepin.dde.filemanager.desktop desktop-trash false
gsettings set com.deepin.dde.filemanager.desktop desktop-home-directory false


#隐藏任务栏
#gsettings set com.deepin.dde.dock hide-mode keep-hidden
#sudo mv /usr/bin/dde-dock /usr/bin/dde-dock-bak

#永不待机锁屏关闭显示器
gsettings set com.deepin.dde.power line-power-screen-black-delay 0
gsettings set com.deepin.dde.power battery-screen-black-delay 0
gsettings set com.deepin.dde.power line-power-sleep-delay 0
gsettings set com.deepin.dde.power battery-sleep-delay 0
gsettings set com.deepin.dde.power line-power-lock-delay 0
gsettings set com.deepin.dde.power battery-lock-delay 0

#结束登陆密钥环提示
if [  -f  /home/sfids/.local/share/keyrings/login.keyring  ];then

	rm /home/sfids/.local/share/keyrings/login.keyring 

fi


#关闭deepin-anything工具，减少cpu占用
#sudo systemctl disable --now  deepin-anything-tool.service
#sudo systemctl disable --now  deepin-anything-monitor.service

#删除定制化桌面自动启动
sudo rm -rf /etc/xdg/autostart/customize.desktop
