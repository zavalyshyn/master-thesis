#!/bin/sh

mac=$(cat /sys/class/net/br-mgmt/address | tr 'a-z' 'A-Z')

opkg update
opkg install coreutils-sort -force-overwrite


uci set wireless.radio1.disabled='0'
uci set wireless.mgmt1=wifi-iface
uci set wireless.mgmt1.device='radio1'
uci set wireless.mgmt1.ssid="wibed $mac"
uci set wireless.mgmt0.ssid="wibed $mac"
uci set wireless.mgmt1.bssid='02:C0:FF:EE:C0:D1'
uci set wireless.mgmt1.network='batmgmt0'
uci set wireless.mgmt1.mode='adhoc'
uci set wireless.mgmt1.ifname='mgmt1'
uci set alfred.alfred.interface='br-mgmt'
uci commit 
/etc/init.d/network reload

uci commit
/etc/init.d/alfred stop
/etc/init.d/alfred start

sleep 10
batctl if add mgmt1 mgmt0
