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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
##############################################################################################

# 主题
git clone https://github.com/kenzok78/luci-theme-argonne.git package/luci-theme-argonne

##############################################################################################
# 实时监控
git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata

#释放内存
git clone https://github.com/chinaboy2345/luci-app-ramfree.git package/luci-app-ramfree

#磁盘管理
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#  关机
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

#docker
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#ShadowSocksR Plus+
git clone https://github.com/fw876/helloworld.git package/helloworld

#openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#文件助手
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant package/luci-app-fileassistant

