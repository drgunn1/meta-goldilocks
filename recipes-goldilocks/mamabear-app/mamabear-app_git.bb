DESCRIPTION = "A sample Qt/QML app to display various sensors data"
LICENSE = "CLOSED"

DEPENDS += "\
    qtdeclarative \
    qtdeclarative-native \
    qtmqtt \
    qtmultimedia \
    qtshadertools-native \
"

SRC_URI = "\
    git://github.com/drgunn1/mamabear-app.git;branch=2.0.0;protocol=ssh \
    file://mamabear-app.service \
    file://mamabear-ble.service \
    file://mamabear-uwb.service \
    file://mamabear-mic.service \
    file://bt-ble-expect.sh \
    file://ble-publisher.sh \
    file://uwb-publisher.sh \
    file://bt-setup.sh \
    file://filter_btctl.py \
    file://mamabear-ble.conf \
    file://mic-publisher.sh \
    file://start-mama.sh \
    file://stop-mama.sh \
    file://camera.py \
    file://object_detect.py \
    file://box_priors.txt \
    file://coco_labels_list.txt \
    file://ssdlite_mobilenet_v2_coco_quant_uint8_float32_no_postprocess.tflite \
    file://go.png \
    file://stop.png \
    file://camera.sh \
    file://object_detect.sh \
"
SRCREV = "ac6a754528fe415995de6a25e7e46f4985999f28"

S = "${WORKDIR}/git"

inherit qt6-cmake systemd

SYSTEMD_SERVICE:${PN} = "\
    mamabear-app.service \
    mamabear-ble.service \
    mamabear-uwb.service \
    mamabear-mic.service \
"

FILES:${PN} += "\
    ${systemd_system_unitdir} \
    /opt/mamabear \
    /etc \
    /root \
"

RDEPENDS:${PN} = "\
    bash \
    expect \
    liberation-fonts \
    mosquitto \
    mosquitto-clients \
    qtdeclarative-qmlplugins \
    sox \
"

require recipes-qt/qt6/qt6.inc

do_install() {
    # companion scripts
    install -d ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/ble-publisher.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/uwb-publisher.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/bt-ble-expect.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/bt-setup.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/filter_btctl.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/mic-publisher.sh ${D}/opt/mamabear/bin/
    install -d ${D}/etc/
    install -m 0644 ${WORKDIR}/mamabear-ble.conf ${D}/etc/
    install -m 0755 ${WORKDIR}/start-mama.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/stop-mama.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/camera.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/object_detect.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/box_priors.txt ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/coco_labels_list.txt ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/ssdlite_mobilenet_v2_coco_quant_uint8_float32_no_postprocess.tflite ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/go.png ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/stop.png ${D}/opt/mamabear/bin/
    install -d ${D}/root/
    install -m 0755 ${WORKDIR}/camera.sh ${D}/root/
    install -m 0755 ${WORKDIR}/object_detect.sh ${D}/root/

    # systemd units
    install -d ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/${BPN}.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/mamabear-ble.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/mamabear-uwb.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/mamabear-mic.service ${D}${systemd_system_unitdir}/

    # Qt app
    install -d ${D}/opt/mamabear/app
    cp --no-preserve=ownership -R ${WORKDIR}/build/. ${D}/opt/mamabear/app/.

    # cleanup stale files
    cd ${D}/opt/mamabear/app/
    rm -rf .qt* .rcc meta_types CMake* cmake* .ninja* build.ninja appMamabear_autogen
    rm -rf appMamabear_*.qrc appMamabear_*.txt
}
