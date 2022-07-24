# install ubuntu 20

1. close wayland

sudo vim /etc/gdm3/custom.conf 

```
    WaylandEnable=false
```
sudo reboot
2. update devices
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall

3. ssh-keygen
cd ~/.ssh
ssh-keygen -o

4. sudo apt install fuse libfuse2

5. vscode (lldb)
https://github.com/vadimcn/vscode-lldb/releases

6. sudo apt-get install gparted
hyper-V 需要扩容磁盘
修改磁盘

7. https://blog.csdn.net/Chamico/article/details/89788324 
先安装一个  搜狗输入法

vscode 记得不要用ubuntu 自带的商场安装  那是阉割版的  无法输入中文


======================================================
./
    - electron-ssr-0.2.6.deb (ssr客户端)
    - Trojan-Qt5-Linux.1.1.6.7z (trojan-qt5 客户端)
    https://portal.shadowsocks.nz/clientarea.php?action=productdetails&id=1424297

