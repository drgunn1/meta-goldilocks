#!/bin/bash

gst-launch-1.0 v4l2src device=/dev/video3 ! videoconvert ! fpsdisplaysink video-sink=waylandsink sync=false
