#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

#make menuconfig
make defconfig
echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config  

#如果要编译树莓派4，需要指定架构和子架构及产品型号，最好还是通过make menuconfig 在界面中选择比较好

#CONFIG_TARGET_bcm27xx=y
#CONFIG_TARGET_bcm27xx_bcm2711_DEVICE_rpi-4=y
#CONFIG_TARGET_bcm27xx_bcm2711=y
#CONFIG_TARGET_bcm27xx_bcm2711_DEVICE_rpi-4=y
#CONFIG_TARGET_BOARD="bcm27xx"
#CONFIG_TARGET_SUBTARGET="bcm2711"
#CONFIG_TARGET_PROFILE="DEVICE_rpi-4"
#CONFIG_TARGET_ARCH_PACKAGES="aarch64_cortex-a72"
#CONFIG_DEFAULT_TARGET_OPTIMIZATION="-Os -pipe"
#CONFIG_CPU_TYPE="cortex-a72"

make defconfig  
