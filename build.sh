#!/bin/bash
CPU_NUM=$(cat /proc/cpuinfo |grep processor|wc -l)
CPU_NUM=$((CPU_NUM+1))

make ARCH=arm CROSS_COMPILE=arm-f1c100s-linux-gnueabi- sunxi_f1c100s_defconfig
make ARCH=arm CROSS_COMPILE=arm-f1c100s-linux-gnueabi- -j${CPU_NUM}

cp arch/arm/boot/zImage /home/lei/lshare/
cp arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dtb /home/lei/lshare/





