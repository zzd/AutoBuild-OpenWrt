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
# sed -i 's/$(VERSION_DIST_SANITIZED)/$(shell TZ=UTC-8 date +%Y%m%d)-OpenWrt/g' openwrt/include/image.mk
# echo "DISTRIB_REVISION='$(TZ=UTC-8 date +%y.%m) Compiled by zhangdi '" > openwrt/package/base-files/files/etc/openwrt_release1
echo "DISTRIB_REVISION='Compiled by zhangdi '" > openwrt/package/base-files/files/etc/openwrt_release1
# sed -i 's/网络存储/存储/g' openwrt/package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/Turbo ACC 网络加速/ACC网络加速/g' openwrt/package/lean/luci-app-sfe/po/zh-cn/sfe.po
# sed -i 's/带宽监控/监控/g' openwrt/feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
curl -fsSL  https://raw.githubusercontent.com/zzd/other/master/patch/poweroff/poweroff.htm > openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm 
curl -fsSL  https://raw.githubusercontent.com/zzd/other/master/patch/poweroff/system.lua > openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua
# rm -rf ./package/lean/luci-app-netdata
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-netdata openwrt/package/lean/luci-app-netdata
# rm -rf ./feeds/packages/admin/netdata
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/netdata openwrt/feeds/packages/admin/netdata
# rm -rf openwrt/feeds/packages/net/smartdns
# svn co https://github.com/sirpdboy/sirpdboy-package/trunk/smartdns openwrt/package/diy/smartdns
./openwrt/scripts/feeds update -i