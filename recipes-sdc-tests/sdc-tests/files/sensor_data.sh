HUMIDITY=30
VOC=10
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
sleep 3
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY

mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
sleep 3
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 3
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 91
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 47
mosquitto_pub -t sensors/mlx90632-temperature -m 35.4
mosquitto_pub -t sensors/sr040-distance -m 150
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.12
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.98
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.44
mosquitto_pub -t sensors/microphone -m 49.5
mosquitto_pub -t sensors/sht40-temperature -m 21.2
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 5
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 89
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 49
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.17
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.90
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.53
mosquitto_pub -t sensors/microphone -m 52.4
mosquitto_pub -t sensors/sht40-temperature -m 21.3
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 1
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 4
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.91
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.32
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.15
mosquitto_pub -t sensors/microphone -m 60.4
mosquitto_pub -t sensors/sht40-temperature -m 21.4
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY
sleep 3
HUMIDITY=$(($HUMIDITY + 2))
VOC=$(($VOC + 15))
mosquitto_pub -t sensors/sgp40-voc -m $VOC
mosquitto_pub -t sensors/bmi323-gyroscopeX -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeY -m 0
mosquitto_pub -t sensors/bmi323-gyroscopeZ -m 0
mosquitto_pub -t sensors/mlx90632-temperature -m 35.6
mosquitto_pub -t sensors/sr040-distance -m 147
mosquitto_pub -t sensors/bmi323-accelerometerX -m 0.18
mosquitto_pub -t sensors/bmi323-accelerometerY -m 0.99
mosquitto_pub -t sensors/bmi323-accelerometerZ -m 0.45
mosquitto_pub -t sensors/microphone -m 72
mosquitto_pub -t sensors/sht40-temperature -m 21.1
mosquitto_pub -t sensors/sht40-humidity -m $HUMIDITY








