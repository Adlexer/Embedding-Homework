# File Transfer

Installing and configuring the Ubuntu common remote file transfer server and client.

Editing by Adlexer Xu 201930310065

## SCP

`scp` is the remote file transfer command of `Ubuntu`.

### Using

#### 1.将本机文件复制到远程服务器上

```bash
# scp local_path_to_file user@192.168.0.1:remote_path
```

* `local_path_to_file` local path of file
* `user`
* `192.168.0.1`
* `remote_path`

news.txt 要复制到服务器上的本地文件
root 通过root用户登录到远程服务器（也可以使用其他拥有同等权限的用户）
192.168.6.129 远程服务器的ip地址（也可以使用域名或机器名）
/etc/squid 将本地文件复制到位于远程服务器上的路径

#### 2.将远程服务器上的文件复制到本机

```bash
# scp user@192.168.0.1:remote_path_to_file local_path 
```

### Test

The test environment is `Ubuntu bash` command line on `Windows cmd` , which is logged in remotely via `SSH`, and local Ubuntu logged in using Android phone. Remote Ubuntu has create test file named `remote.txt` and local Ubuntu has create test file named `local.txt`.

#### 1.Login remote Ubuntu(Windows)

```powershell
>ssh -p 27503 root@144.34.167.6
```

#### ![3-1-1](img/3-1-1.png)

#### 2.Copy file from remote server(Android)

```bash
# scp -P 27503 local.txt root@114.34.167.6:/home
```

#### 3.Copy file to remote server(Android)

```bash
# scp -P 27503 root@114.34.167.6:/home/remote.txt /root
```

#### 4.Result

**local command line:**

![3-1-4.jpg](img/3-1-4.jpg.png)

**local:**

![3-1-2](img/3-1-2.png)

**remote:**

![3-1-3](img/3-1-3.png)

## NFS



## TFTP



