#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

#添加5Gdev
git clone https://github.com/abo2029/Auto-Build-OpenWrt
cp -f ../PATCH/kernel_5Gdev/998-kernel-option-add-new-dev.patch ./target/linux/ramips/patches-5.4/998-kernel-option-add-new-dev.patch

# Define My Package
#git clone https://github.com/vernesong/OpenClash package/molun/luci-app-openclash
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/molun/luci-app-adguardhome
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/molun/luci-app-jd-dailybonus
#git clone https://github.com/sirpdboy/luci-theme-opentopd package/molun/luci-theme-opentopd
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/molun/luci-theme-infinityfreedom
