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


# 状态

# 实时监控
git clone https://github.com/Jason6111/luci-app-netdata.git package/luci-app-netdata

#释放内存
git clone https://github.com/chinaboy2345/luci-app-ramfree.git package/luci-app-ramfree

##############################################################################################

#  系统

#定时重启
git clone https://github.com/f8q8/luci-app-autoreboot.git package/luci-app-autoreboot

#ttyd

#磁盘管理
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#文件传输
#git clone https://github.com/zxl78585/luci-app-filetransfer.git package/luci-app-filetransfer

#  关机
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

##############################################################################################

# 服务

#docker
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#ShadowSocksR Plus+
git clone https://github.com/fw876/helloworld.git package/helloworld

#passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall

#passwall2
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2

#helloword
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/fw876/helloworld.git package/helloworld

#openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/adguardhome package/adguardhome
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome

##############################################################################################

# NAS

#文件助手
#git clone https://github.com/DarkDean89/luci-app-filebrowser.git package/luci-app-filebrowser
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-fileassistant package/luci-app-fileassistant

##############################################################################################

# 网络

#Turbo ACC 加速

#git clone https://github.com/imapproxy/luci-app-turboacc.git package/luci-app-turboacc

##############################################################################################
