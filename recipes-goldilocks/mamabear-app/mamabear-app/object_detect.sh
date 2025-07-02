#!/bin/bash

if ! dmesg | grep -q "ap1302_mipi 2-003c: AP1302 is found"; then
	echo ""
        echo ""
        echo ""
        echo ""
	echo "***************************************"
	echo "***** Cannot find Cyclops 2 board *****"
	echo "***************************************"
	echo "Please ensure that all jumpers are properly installed"
	echo "on the Cyclops 2 board and that the ribbon cable is"
	echo "properly connected and fully seated in the connectors"
	echo "on both the Mamabear board and the Cyclops 2 board."
	echo ""
	echo ""
	echo "Exiting Cyclops 2 camera demo - no AP1302 device"
	echo "detected on I2C interface."
	echo "If you have tried the steps above and are still getting"
	echo "this message please contact don.gunn@futureelectronics.com"
	echo "for support."
	echo ""
        echo ""
        echo ""
        echo ""
	exit 1
fi

if ! dmesg | grep -q "ap1302_mipi 2-003c: Load firmware successfully."; then
        echo ""                                                             
        echo ""                                                             
        echo ""                                                             
        echo ""                                                             
	echo "************************************"
	echo "***** Firmware failed to load. *****"
	echo "************************************"
	echo "Please ensure that you have all necessary jumpers connected"
	echo "and that the camera module is properly installed on the"
	echo "Cyclops 2 board."
	echo ""
	echo ""
        echo "Exiting Cyclops 2 camera demo - Firmware failed to load."                              
        echo "If you have tried the steps above and are still getting"            
        echo "this message please contact don.gunn@futureelectronics.com"                  
        echo "for support." 
        echo ""                                                             
        echo ""                                                             
        echo ""                                                             
        echo ""                                                             
	exit 1
fi

echo "Found Cyclops 2"
echo "Starting object detection!"
/opt/gopoint-apps/scripts/machine_learning/nnstreamer/detection/example_detection_mobilenet_ssd_v2_tflite \
-c /dev/video3 \
-b NPU \
-p /opt/mamabear/bin/ssdlite_mobilenet_v2_coco_quant_uint8_float32_no_postprocess.tflite \
-l /opt/mamabear/bin/coco_labels_list.txt \
-x /opt/mamabear/bin/box_priors.txt \
-d \
-g /opt/mamabear/bin \
-t red
