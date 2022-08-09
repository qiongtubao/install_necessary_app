### 环境 Ubuntu20


### 官方文档
https://docs.docker.com/engine/install/ubuntu/

### 问题
#### 问题1 安装时需要root用户才行
```
➜  ~ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
正在读取软件包列表... 完成
正在分析软件包的依赖关系树       
正在读取状态信息... 完成       
containerd.io 已经是最新版 (1.6.7-1)。
docker-ce-cli 已经是最新版 (5:20.10.17~3-0~ubuntu-focal)。
docker-ce 已经是最新版 (5:20.10.17~3-0~ubuntu-focal)。
docker-compose-plugin 已经是最新版 (2.6.0~ubuntu-focal)。
升级了 0 个软件包，新安装了 0 个软件包，要卸载 0 个软件包，有 1 个软件包未被升级。
有 1 个软件包没有被完全安装或卸载。
解压缩后会消耗 0 B 的额外空间。
您希望继续执行吗？ [Y/n] y
正在设置 docker-ce (5:20.10.17~3-0~ubuntu-focal) ...
Job for docker.service failed because the control process exited with error code.
See "systemctl status docker.service" and "journalctl -xe" for details.
invoke-rc.d: initscript docker, action "start" failed.
● docker.service - Docker Application Container Engine
     Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
     Active: activating (auto-restart) (Result: exit-code) since Tue 2022-08-09 14:45:05 CST; 4ms ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
    Process: 164700 ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock (code=exited, status=1/FAILURE)
   Main PID: 164700 (code=exited, status=1/FAILURE)
dpkg: 处理软件包 docker-ce (--configure)时出错：
 已安装 docker-ce 软件包 post-installation 脚本 子进程返回错误状态 1
在处理时有错误发生：
 docker-ce
E: Sub-process /usr/bin/dpkg returned an error code (1)
```

这里需要用root用户运行
ubuntu 登录root用户

```
sudo -s
su
```


#### 问题2
由于使用的是自己的docker仓库
docker login时
```
Error response from daemon: Get "https://localhost/": x509: certificate signed by unknown authority
```

不是默认使用 /etc/docker/daemon.json  新建/etc/docker/daemon.json  增加配置无效


暂时修改 service启动命令

vi /usr/lib/systemd/system/docker.service

修改

ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock --insecure-registry http://localhost

重启服务

systemctl daemon-reload && systemctl restart docker


