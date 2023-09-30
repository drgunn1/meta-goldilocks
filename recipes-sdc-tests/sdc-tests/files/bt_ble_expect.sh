#!/usr/bin/expect -f

set device "00:60:37:6B:C7:E8"
set device_us "00_60_37_6B_C7_E8"
set timeout -1

spawn bluetoothctl
expect "Agent registered"

send -- "scan on\r"
expect "BabyBear"
send -- "scan off\r"
expect "Discovering"

send -- "connect $device\r"
expect "Connection successful"

send -- "menu gatt\r"
expect "Print environment variables"

send -- "select-attribute /org/bluez/hci0/dev_$device_us/service000e/char000f\r"
expect "char000f"
send -- "notify on\r"
expect eof
