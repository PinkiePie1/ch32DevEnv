# CH585例程

- EPD_Bare: 非TMOS跑墨水屏的程序
- Peripheral_DCDC: 开启DCDC模式的蓝牙从机例程
- Broadcaster: 蓝牙广播例程 （makefile没更新，可根据Peripheral_DCDC文件夹下的makefile）

## 下载说明

首先要在windows下安装ch37x驱动。
单片机按住BOOT接入USB，在对应文件夹下执行make flash即可下载。 make all生成hex和bin文件，make build编译生成bin文件
CH585（和其他ch57-ch59系列）自带很快的ISP，通过USB口下载比使用两线接口ICP或者串口下载更快更好。

WSL和USB本就不对付，再加上WSL的内核不支持ch37x，又不支持安装驱动，只能重新编译内核，完全不现实。所以通过调用win下的ISP程序下载。
