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
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >> feeds.conf.default

#添加源
#sed -i '1i src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main\nsrc-git passwall_luci https://github.com/Openwrt-Passwall/openwrt-passwall.git;main' feeds.conf.default


# 注释掉 25.x luci 行
#sed -i 's/^\(src-git luci .*\(25\.[^;]*\)\)/#\1/' feeds.conf.default
# 取消注释 24.x luci 行
#sed -i 's/^#\(src-git luci .*\(24\.[^;]*\)\)/\1/' feeds.conf.default

#增加github代理
#sed -i 's| \(https://github.com\)| https://gh-proxy.com/\1|g' feeds.conf.default
