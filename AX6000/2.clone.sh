#!/usr/bin/env bash

# download base code
CODE_DIR=_firmware_code
git clone --single-branch -b openwrt-21.02 https://github.com/immortalwrt/immortalwrt _firmware_code
mv ./$CODE_DIR/* ./

# download app codes
mkdir -p package/_supply_packages && cd package/_supply_packages
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git pw-dependencies
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git
