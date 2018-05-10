#beforce you build this drivers, read me first
#name:huangliquan email:huangliquan@xair.cn
#phone:15220187476
#date:2018/5/10

#build arm version drivers
#first cd build 
#edit scripts/arm/config.arm
#makesure 
#KERNELPATH=your linux kernel path
#KERNELARCH=arm
#TOOLPREFIX=your toolchain

#make drivers_patch BOARD_TYPE=arm to patch drivers
#use make BOARD_TYPE=arm to make arm version drivers
#if shell Permission denied sudo chmod +x shell.sh

#run
#cp rootfs-arm.build/lib/moudules to arm board
#remember to cp rootfs-arm.build/lib/firmware/ath6k/AR6004/hw3.0 to arm board /lib/firmware/ath6k/AR6004/hw3.0
#insmod compat.ko
#insmod cfg80211.ko
#insmod ath6kl_usb.ko

#insert usb AR1021x module 
#run ifconfig 
#addition p2p0 and wlan0 or wlan1
