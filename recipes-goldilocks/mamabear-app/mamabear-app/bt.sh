#!/bin/sh

systemctl start bluetooth.service

if ! lsmod | grep -q moal; then                                                                                                                                                                     
        modprobe moal mod_para=nxp/wifi_mod_para.conf                                                                                                                                                                                 
fi 

if ! hciconfig | grep -q hci0; then  
	hciattach /dev/ttymxc0 any -s 3000000 3000000 flow
	hciconfig hci0 up
fi

