#!/bin/sh
#
# Load the BT driver and setup BT services

modprobe moal mod_para=nxp/wifi_mod_para.conf

systemctl start bluetooth.service

if ! hciconfig | grep -q hci0; then
	hciattach /dev/ttymxc0 any -s 3000000 3000000 flow
	hciconfig hci0 up
fi
