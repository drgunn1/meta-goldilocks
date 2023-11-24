#!/bin/bash


# Set the duration of each recording in seconds
duration=1

while true; do
    output_file="recorded_audio.wav"

    arecord -d "$duration" -f S32_LE -t wav -r 44100 -D hw:2,0 "$output_file"
    arecord -d "$duration" -f S32_LE -t wav -r 44100 -D hw:3,0 "$output_file"
    rms_amplitude=$(sox "$output_file" -n stat 2>&1 | awk '/RMS     amplitude:/ {print $3}')
    db_level=$(printf "%.2f" $(echo "20 * l($rms_amplitude)/l(10)" | bc -l))
    mosquitto_pub -t sensors/microphone -m $db_level

    # Clean up: remove the recorded audio file
    rm "$output_file"
done
