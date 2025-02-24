#!/bin/bash

git clone https://github.com/YL2209/luci-theme-alpha.git package/luci-theme-alpha
./scripts/feeds install luci-theme-alpha
echo "CONFIG_ALL_NONSHARED=n" > .config
echo "CONFIG_ALL_KMODS=n" >> .config
echo "CONFIG_ALL=n" >> .config
echo "CONFIG_AUTOREMOVE=n" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
echo "CONFIG_PACKAGE_luci-theme-alpha=m" >> .config