#!/bin/bash

/opt/gopoint-apps/scripts/machine_learning/nnstreamer/detection/example_detection_mobilenet_ssd_v2_tflite \
-c /dev/video3 \
-b NPU \
-p /opt/mamabear/bin/ssdlite_mobilenet_v2_coco_quant_uint8_float32_no_postprocess.tflite \
-l /opt/mamabear/bin/coco_labels_list.txt \
-x /opt/mamabear/bin/box_priors.txt \
-d  \
-g /opt/mamabear/bin \
-t red
