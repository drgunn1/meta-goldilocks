#!/bin/sh

modprobe nxp-sr1xx

# distance on stdoout
stdbuf -oL /home/root/bin/demo_ranging_controlee 2>/dev/null | awk '/distance/ { system("mosquitto_pub -t sensors/sr040-distance -m " $5); }'
