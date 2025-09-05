#!/bin/bash
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 修改源
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git OpenClash https://github.com/vernesong/OpenClash' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld.git;main' >>feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default

#添加源
#echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >> feeds.conf.default
#echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git passwall2_luci https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
sed -i '1i\
src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages\
src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall\
src-git passwall2_luci https://github.com/xiaorouji/openwrt-passwall2' feeds.conf.default


# 注释掉 23.x luci 行
sed -i 's/^\(src-git luci .*\(23\.[^;]*\)\)/#\1/' feeds.conf.default
# 取消注释 24.x luci 行
sed -i 's/^#\(src-git luci .*\(24\.[^;]*\)\)/\1/' feeds.conf.default

#增加github代理
#sed -i 's|https://github.com|https://gh-proxy.com/https://github.com|g' feeds.conf.default
