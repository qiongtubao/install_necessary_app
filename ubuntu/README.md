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
https://code.visualstudio.com/docs/?dv=linux64_deb

使用自己下载的code 才能输入中文
```
    sudo dpkg -i ./code_1.69.0-1657183742_amd64.deb 
```

======================================================
./
    - electron-ssr-0.2.6.deb (ssr客户端)
    - Trojan-Qt5-Linux.1.1.6.7z (trojan-qt5 客户端)

