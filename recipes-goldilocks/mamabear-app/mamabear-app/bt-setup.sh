#!/bin/sh
#
# Load the BT driver and setup BT services

wpa_supplicant -B -Dnl80211 -imlan0 -c /etc/wpa_supplicant.conf


systemctl start bluetooth.service

if ! hciconfig | grep -q hci0; then
	modprobe btnxpuart
	sleep 3
	hciconfig hci0 up
fi
