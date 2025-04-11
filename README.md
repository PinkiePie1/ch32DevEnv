# CH32IDE
ch系列芯片的开发环境，目前支持ch585和ch32v203。
使用环境是WSL，可用vscode的连接至wsl功能
ch585的例程在ch585apps文件夹下，ch32v203的例程在ch32v203apps文件夹下

## 依赖
需要安装powershell和wsl2，可通过搜索引擎搜索安装方式。

需要去[wch官网](http://www.mounriver.com/download)下载linux环境编译器（文件名MRS_Toolchain_Linux_x64_V210.tar.xz，如果有新版本也可以使用），并在.mk文件中编辑PATH_TO_TOOLCHAIN=指定编译器的路径。

编译前需要安装编译常用软件，可在wsl下通过以下命令安装：
'''
sudo apt-get install build-essential libnewlib-dev gcc-riscv64-unknown-elf libusb-1.0-0-dev libudev-dev gdb-multiarch
'''

## 编译与下载
ch32v203只支持编译，编译之后可通过官方下载工具或者minichlink下载。

ch585（以及其他ch57-ch59系列）出厂自带USB接口的ISP，速度和稳定性都比用调试口好很多，可在例程文件夹下运行make -j99 flash命令进行编译和自动下载。注意在运行前需要按住ch585开发板上的download按键并将usb接入开发板，随后松开download按键并在20秒内完成下载。
也可通过官方的ISP工具进行下载，编译生成的.bin和.hex文件在例程目录的obj目录下。

