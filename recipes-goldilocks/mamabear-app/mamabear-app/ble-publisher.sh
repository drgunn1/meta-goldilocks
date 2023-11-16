#!/bin/bash

BB_MAC="00:60:37:6B:C7:E8"

# Setup BT driver and friends if needed
if ! lsmod | grep -q moal; then
	/opt/mamabear/bin/bt-setup.sh
fi

# bt-ble-expect.sh streams the output of bluetoothctl to stdout.
# Parse its output, and publish extracted values to MQTT.
stdbuf -oL /opt/mamabear/bin/bt-ble-expect.sh | python3 /opt/mamabear/bin/filter_btctl.py
