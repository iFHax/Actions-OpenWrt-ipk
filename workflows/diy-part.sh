#!/bin/bash

git clone https://github.com/YL2209/luci-theme-argon.git package/luci-theme-argon
./scripts/feeds install luci-theme-argon
echo "CONFIG_ALL_NONSHARED=n" > .config
echo "CONFIG_ALL_KMODS=n" >> .config
echo "CONFIG_ALL=n" >> .config
echo "CONFIG_AUTOREMOVE=n" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-argon=m" >> .config