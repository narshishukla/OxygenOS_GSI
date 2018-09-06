#!/sbin/sh

## start config variables

tmp=/tmp/OOS-patch
bin=$tmp/tools
ramdisk=$tmp/ramdisk
ramdisk_patch=$ramdisk-patch
split_img=$tmp/split-img
# set this only if boot-patcher.sh can't find your boot partition
boot_block=
# set this if you want to back up your boot partition
# boot_backup=/data/local/boot-backup.img

## end config variables

case $(getprop ro.product.cpu.abi) in
x86)
	arch=x86
	;;
x86_64)
	arch=x86_64
	;;
arm64*)
	arch=arm64
	;;
armeabi*)
	arch=arm
	;;
*)
	arch=arm
	;;
esac

bin=$bin/$arch
