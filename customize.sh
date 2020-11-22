#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i '/set network.globals.ula_prefix/d' openwrt/package/base-files/files/bin/config_generate
sed -i 's/网络存储/存储/g' openwrt/package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/Turbo ACC 网络加速/ACC网络加速/g' openwrt/package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/带宽监控/监控/g' openwrt/feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
