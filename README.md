# File Transfer

Installing and configuring the Ubuntu common remote file transfer server and client.

Editing by Adlexer Xu 201930310065

## SCP

`scp` is the remote file transfer command of `Ubuntu`.

### Using

#### 1.Copy local files to a remote server

```bash
# scp local_path_to_file user@192.168.0.1:remote_path
```

* `local_path_to_file` the local path to file you want to transfer
* `user` user on remote server such  as `root`
* `192.168.0.1`  IP address of remote server
* `remote_path` the path of remote server you want to place the file in

#### 2.Copy files from the remote server to this computer

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

NFS is the network file system, which enables file sharing between different machines and systems through the network.

### Steps

#### 1.Login remote Ubuntu(Windows)

```powershell
>ssh -p 27503 root@144.34.167.6
```

#### 2.Install NFS packages

```bash
# apt install nfs-kernel-server
# apt install nfs-common
```

#### 3.Add NFS shared directories

```bash
# vim /etc/exports
```

Setting `/home/nfsroot` as NFS shared directory.

![3-2-1](img/3-2-1.png)

Making new folder on this path.

```bash
# mkdir /home/nfsroot
```

#### 4.Start NFS service

```bash
# /etc/init.d/nfs-kernel-server start
```

or

```bash
# /etc/init.d/nfs-kernal-server restart
```

if you changed the file `/etc/exports`

#### 5.Test



## TFTP



