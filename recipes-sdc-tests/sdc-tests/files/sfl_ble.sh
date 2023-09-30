#!/bin/bash

BB_MAC="00:60:37:6B:C7:E8"

# Load wifi driver if needed
if ! lsmod | grep -q moal; then
	./wifi-bt.sh
fi


stdbuf -oL ./bt_ble_expect.sh | stdbuf -oL strings | stdbuf -oL awk '
BEGIN {
	in_block = 0;
	bb_done = 0;
}

# bb,accX, accY,AccZ,AmbientTemp,Remote Object Temp, Ambient Temp, Humidity and VOC Index

/Value:/ {
	printf("DATA: %s%s%s\n", data[1], data[2], data[3]);

	in_block = 0;
	bb_done = 0;
	i = 1;
}

/bb,/ {
	in_block = 1;

	data[i] = substr($0, 54)
	i++;
	bb_done = 1;

}

/[0-9],/ {
	if (bb_done == 1) {
		bb_done = 0;
	} else {
		data[i] = substr($0, 54)
		i++;
	}
}
' | while read line; do
	values=$(echo $line | sed -e 's/bb,//; s/,/ /g')
	array=($values)

	set -x 

	mosquitto_pub -t sensors/bmi323-accelerometerX -m ${array[1]}
	mosquitto_pub -t sensors/bmi323-accelerometerY -m ${array[2]}
	mosquitto_pub -t sensors/bmi323-accelerometerZ -m ${array[3]}

	# mosquitto_pub -t TBD -m ${array[4]} # amb. temp

	mosquitto_pub -t sensors/mlx90632-temperature -m ${array[5]} # remote object temp

	mosquitto_pub -t sensors/sht40-temperature -m ${array[6]} # Ambient temp
	mosquitto_pub -t sensors/sht40-humidity -m ${array[7]} # Humidity

	mosquitto_pub -t sensors/sgp40-voc -m ${array[8]} # voc index
done
