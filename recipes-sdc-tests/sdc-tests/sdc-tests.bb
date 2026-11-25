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
    install -m 0755 ${UNPACKDIR}/matter-wifi-startup.sh ${D}${sysconfdir}/sdc
    install -m 0755 ${UNPACKDIR}/thermostat-matter.sh ${D}${sysconfdir}/sdc
    install -m 0755 ${UNPACKDIR}/lightbulb-matter.sh ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/starwars.wav ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/Moldova.wav ${D}${sysconfdir}/sdc
    install -m 0755 ${UNPACKDIR}/wifi-bt.sh  ${D}${sysconfdir}/sdc
    install -m 0755 ${UNPACKDIR}/uwblib_init.sh  ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/SE05x-MW-v04.03.01.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/UWBIOT_SR150_v04.06.00_libuwbd.zip.txt ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/UWBIOT_SR150_v04.06.00_Linux.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/uwb.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/bin.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/uwb-se.zip.txt  ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/bluetooth.service ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/uwb_api.zip.txt ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/librespot ${D}${sysconfdir}/sdc
    install -m 0644 ${UNPACKDIR}/credentials.json ${D}${sysconfdir}/sdc
}

S = "${UNPACKDIR}"
