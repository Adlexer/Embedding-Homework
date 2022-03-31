# Build Linux

Building Arm-Linux on Android Phone using Termux

Edited by Adlexer Xu 201930310065

## Steps

### 1.Set up Termux application on Android phone

I strongly recommend to download `Termux` in `Google Play`, version 0.117.

If you don't have enough conditions to climb-over-the-wall, this branch had provided the existing APK files, but the following downloading steps may be seriously slow.

### 2.Install proot-distro on Termux

```bash
$ pkg install proot-distro
```

`Proot-distro` is a manager of `Linux distribution`.

### 3.Install Ubuntu using proot-distro

```bash
$ proot-distro install ubuntu
```

Then the latest version of `Ubuntu`(21.10 Impish Indri) will be installed directly on the Android phone.

### 4.Login Ubuntu using proot-distro

```bash
$ proot-distro login ubuntu
```

In essence, this is to login `Ubuntu` on the local host through `SSH`. Using this command the next time you need to use `Ubuntu`.

And then you will see the bash command line of `Ubuntu`.

![1-1](img\1-1.png)

