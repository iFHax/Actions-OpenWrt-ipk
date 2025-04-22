#!/bin/bash

git clone https://github.com/iFHaxx/luci-app-ttl.git package/luci-app-ttl
./scripts/feeds install luci-app-ttl
echo "CONFIG_ALL_NONSHARED=n" > .config
echo "CONFIG_ALL_KMODS=n" >> .config
echo "CONFIG_ALL=n" >> .config
echo "CONFIG_AUTOREMOVE=n" >> .config
echo "CONFIG_LUCI_LANG_en=y" >> .config
echo "CONFIG_PACKAGE_luci-app-ttl=m" >> .config
