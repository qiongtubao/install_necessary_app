## 环境
Ubuntu 20.04.4 LTS （window hyper-v）

## 安装步骤 解决问题步骤

1. sudp dpkg -i scrt-sfx-8.3.4-1699.ubuntu16-64.x86_64.deb 
    报错
```
正在选中未选择的软件包 scrt-sfx。
(正在读取数据库 ... 系统当前共安装有 211460 个文件和目录。)
准备解压 scrt-sfx-8.3.4-1699.ubuntu16-64.x86_64.deb  ...
正在解压 scrt-sfx (8.3.4-1699) ...
dpkg: 依赖关系问题使得 scrt-sfx 的配置工作不能继续：
 scrt-sfx 依赖于 libssl1.0.0；然而：
  未安装软件包 libssl1.0.0。

dpkg: 处理软件包 scrt-sfx (--install)时出错：
 依赖关系问题 - 仍未被配置
正在处理用于 man-db (2.9.1-1) 的触发器 ...
正在处理用于 gnome-menus (3.36.0-1ubuntu1) 的触发器 ...
正在处理用于 desktop-file-utils (0.24-1ubuntu3) 的触发器 ...
正在处理用于 mime-support (3.64ubuntu1) 的触发器 ...
在处理时有错误发生：
scrt-sfx
```

2. sudo vi /etc/apt/sources.list

```
deb http://security.ubuntu.com/ubuntu bionic-security main
```

之后执行 

sudo apt update && apt-cache policy libssl1.0-dev

sudo apt-get install libssl1.0-dev

#### 
```
正在读取软件包列表... 完成
正在分析软件包的依赖关系树       
正在读取状态信息... 完成       
您也许需要运行“apt --fix-broken install”来修正上面的错误。
下列软件包有未满足的依赖关系：
 scrt-sfx : 依赖: libssl1.0.0 但是它还没有被安装
E: 有未能满足的依赖关系。请尝试不指明软件包的名字来运行“apt --fix-broken install”(也可以指定一个解决办法)
```

执行sudo apt --fix-broken install

#

安装sudo apt-get install openssh-server 

# 
/usr/bin/SecureCRT 
/usr/bin/SecureCRT: error while loading shared libraries: libpython2.7.so.1.0: cannot open shared object file: No such file or directory

sudo apt install libpython2.7 libpython2.7-stdlib libpython2.7-minimal

#
/usr/bin/SecureCRT                                                    
/usr/bin/SecureCRT: error while loading shared libraries: libpng12.so.0: cannot open shared object file: No such file or directory

sudo add-apt-repository ppa:linuxuprising/libpng12
sudo apt update
sudo apt install libpng12-0

#

sudo perl securecrt_linux_crack.pl /usr/bin/SecureCRT 

Name: ygeR
Company: TEAM ZWT
Serial Number:03-36-338639
License Key: ADJE19 7U19YF 46RJWC 3CGK73 ADF3GN S66TJJ YU7BJP 6WJF1G
Issue Date: 03-10-2017

# 

sudo perl securefx_linux_crack.pl /usr/bin/SecureFX

Name: ygeR
Company: TEAM ZWT
Serial Number:06-70-001589
License Key: ACUYJV Q1V2QU 1YWRCN NBYCYK ABU767 D4PQHA S1C4NQ GVZDQF
Issue Date: 03-10-2017