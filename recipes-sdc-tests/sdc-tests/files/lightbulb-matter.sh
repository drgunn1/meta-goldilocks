modprobe btnxpuart
hciconfig hci0 up
resolvconf -d mlan0.udhcpc
ifconfig mlan0 192.168.1.1
chip-lighting-app --wifi --ble-device 0

