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
# 1.更改默认IP
#sed -i 's/192.168.1.1/192.168.0.112/g' package/base-files/files/bin/config_generate

# 2.清除默认密码/改密码为 
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 5.修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' feeds/luci/collections/luci/Makefile


cat >package/base-files/files/etc/networkip <<-EOF
uci set network.lan.ipaddr='192.168.0.112'                                    # IPv4 地址(openwrt后台地址)
uci set network.lan.netmask='255.255.255.0'                                 # IPv4 子网掩码
uci set network.lan.gateway='192.168.0.1'                                   # IPv4 网关
#uci set network.lan.broadcast='10.10.10.255'                               # IPv4 广播
uci set network.lan.dns='202.96.134.33 202.96.128.86'                         # DNS(多个DNS要用空格分开)
uci set network.lan.delegate='0'                                            # 去掉LAN口使用内置的 IPv6 管理
uci commit network                                                          # 不要删除跟注释,除非上面全部删除或注释掉了
uci set dhcp.lan.ignore='1'                                                 # 关闭DHCP功能
uci commit dhcp                                                             # 跟‘关闭DHCP功能’联动,同时启用或者删除跟注释
uci set system.@system[0].hostname='OpenWrt'                             # 修改主机名称为OpenWrt-N1
sed -i 's/\/bin\/login/\/bin\/login -f root/' /etc/config/ttyd             # 设置ttyd免帐号登录，如若开启，进入OPENWRT后可能要重启一次才生效
EOF
