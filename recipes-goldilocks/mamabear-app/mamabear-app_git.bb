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
    file://find_baby.sh \
    file://find_baby.py \
    file://gtk_find_baby.sh \
    file://baby.png \
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
    install -m 0755 ${WORKDIR}/sources-unpack/ble-publisher.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/uwb-publisher.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/bt-ble-expect.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/bt-setup.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/filter_btctl.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/mic-publisher.sh ${D}/opt/mamabear/bin/
    install -d ${D}/etc/
    install -m 0644 ${WORKDIR}/sources-unpack/mamabear-ble.conf ${D}/etc/
    install -m 0755 ${WORKDIR}/sources-unpack/start-mama.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/stop-mama.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/camera.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/object_detect.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/box_priors.txt ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/coco_labels_list.txt ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/ssdlite_mobilenet_v2_coco_quant_uint8_float32_no_postprocess.tflite ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/go.png ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/stop.png ${D}/opt/mamabear/bin/
    install -d ${D}/root/
    install -m 0755 ${WORKDIR}/sources-unpack/camera.sh ${D}/root/
    install -m 0755 ${WORKDIR}/sources-unpack/object_detect.sh ${D}/root/
    install -m 0755 ${WORKDIR}/sources-unpack/find_baby.sh ${D}/root/
    install -m 0755 ${WORKDIR}/sources-unpack/find_baby.py ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/gtk_find_baby.sh ${D}/opt/mamabear/bin/
    install -m 0755 ${WORKDIR}/sources-unpack/baby.png ${D}/opt/mamabear/bin/

    # systemd units
    install -d ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/sources-unpack/${BPN}.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/sources-unpack/mamabear-ble.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/sources-unpack/mamabear-uwb.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/sources-unpack/mamabear-mic.service ${D}${systemd_system_unitdir}/

    # Qt app
    install -d ${D}/opt/mamabear/app
    cp --no-preserve=ownership -R ${WORKDIR}/build/. ${D}/opt/mamabear/app/.
    cp --no-preserve=ownership -R ${WORKDIR}/build/appmamabear_qmltyperegistrations.cpp ${D}/opt/mamabear/app/.
    # cleanup stale files
    cd ${D}/opt/mamabear/app/
    rm -rf .qt* .rcc meta_types CMake* cmake* .ninja* build.ninja appMamabear_autogen
    rm -rf appMamabear_*.qrc appMamabear_*.txt
    rm compile_commands.json
    rm qmltypes/appMamabear_foreign_types.txt
    rm mamabear/appMamabear_qml_module_dir_map.qrc
}
