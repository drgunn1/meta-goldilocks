#!/bin/sh

FILE=/etc/sdc/uwblib_init.done
if test -f "$FILE"; then
        echo "UWB lib init already done."
        exit 0
fi

cp /etc/sdc/* /home/root
mv /home/root/SE05x-MW-v04.03.01.zip.txt /home/root/SE05x-MW-v04.03.01.zip
mv /home/root/UWBIOT_SR150_v04.02.01_libuwbd.zip.txt /home/root/UWBIOT_SR150_v04.02.01_libuwbd.zip
mv /home/root/UWBIOT_SR150_v04.02.01_Linux.zip.txt /home/root/UWBIOT_SR150_v04.02.01_Linux.zip
mv /home/root/bin.zip.txt /home/root/bin.zip
mv /home/root/uwb.zip.txt /home/root/uwb.zip
mv /home/root/uwb-se.zip.txt /home/root/uwb-se.zip
mv /home/root/nxp-demo-experience.zip.txt /home/root/nxp-demo-experience.zip
mv /home/root/bluetooth.service /lib/systemd/system/
cd /home/root/
unzip -o nxp-demo-experience.zip -d /home/root/.nxp-demo-experience
unzip -o bin.zip
unzip -o uwb.zip
mkdir /usr/local
unzip -o uwb-se.zip -d /usr/local
# python3 simw-top/scripts/create_cmake_projects.py
# cd /home/root/simw-top_build/imx_native_se050_t1oi2c
# cmake --build .
# make install
# clean up
rm /home/root/*.zip


ldconfig /usr/local/lib

ex_ecc "/dev/i2c-2:0x48"

ldconfig /usr/local/uwbiot/lib/

touch /etc/sdc/uwblib_init.done
