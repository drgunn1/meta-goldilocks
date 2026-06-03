SUMMARY = "sdc-tests"
DESCRIPTION = "SDC test files"
LICENSE = "CLOSED"

SRC_URI = "\
    file://matter-wifi-startup.sh \
    file://Moldova.wav \
    file://starwars.wav \
    file://wifi-bt.sh \
    file://uwblib_init.sh \
    file://SE05x-MW-v04.03.01.zip.txt \
    file://UWBIOT_SR150_v04.06.00_libuwbd.zip.txt \
    file://UWBIOT_SR150_v04.06.00_Linux.zip.txt \
    file://bin.zip.txt \
    file://uwb.zip.txt \
    file://uwb-se.zip.txt \
    file://bluetooth.service \
    file://uwb_api.zip.txt \
    file://lightbulb-matter.sh \
    file://thermostat-matter.sh \
    file://librespot \
    file://credentials.json \
"



do_install () {
    install -d ${D}${sysconfdir}/sdc/
    install -m 0755 ${WORKDIR}/sources-unpack/matter-wifi-startup.sh ${D}${sysconfdir}/sdc
    install -m 0755 ${WORKDIR}/sources-unpack/thermostat-matter.sh ${D}${sysconfdir}/sdc
    install -m 0755 ${WORKDIR}/sources-unpack/lightbulb-matter.sh ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/starwars.wav ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/Moldova.wav ${D}${sysconfdir}/sdc
    install -m 0755 ${WORKDIR}/sources-unpack/wifi-bt.sh  ${D}${sysconfdir}/sdc
    install -m 0755 ${WORKDIR}/sources-unpack/uwblib_init.sh  ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/SE05x-MW-v04.03.01.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/UWBIOT_SR150_v04.06.00_libuwbd.zip.txt ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/UWBIOT_SR150_v04.06.00_Linux.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/uwb.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/bin.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/uwb-se.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/bluetooth.service ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/uwb_api.zip.txt ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/librespot ${D}${sysconfdir}/sdc
    install -m 0644 ${WORKDIR}/sources-unpack/credentials.json ${D}${sysconfdir}/sdc
}

S = "${WORKDIR}/sources-unpack"
