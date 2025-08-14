#!/bin/bash

# Output file for MAC address
OUTPUT_FILE="/etc/mamabear-ble.conf"

# Scan for nearby Bluetooth devices
echo "Please ensure your Baby Bear board is turned on"
read -n 1 -s -r -p "Press any key to continue..."
echo
echo
echo
echo "scanning for Baby Bear.  Please wait..."
echo "10"
sleep 1
echo "9"
sleep 1
echo "8"
sleep 1
echo "7"
sleep 1
echo "6"
sleep 1
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1

echo "Scanning for Baby Bear..."
MAC_ADDRESS=$(bluetoothctl devices | grep "BabyBear" | awk '{print $2}' | head -n 1)
if [ -n "$MAC_ADDRESS" ]; then
    echo "Found Baby Bear: $MAC_ADDRESS"
    echo "MAMABEAR_BLE_MAC=$MAC_ADDRESS" > "$OUTPUT_FILE"
    echo "MAC address written to $OUTPUT_FILE"
    systemctl restart mamabear-ble
else
    echo "Baby Bear not found."
    echo "Please ensure your Baby Bear board is switched on, place it"
    echo "close to your mamabear board and rerun this script."
    break
fi

