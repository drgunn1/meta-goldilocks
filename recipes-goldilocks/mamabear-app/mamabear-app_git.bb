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
    git://g1.sfl.team:29419/futureelectronics/goldilocks/mamabear-app;branch=master;protocol=ssh \
    file://${BPN}.service \
    file://mamabear-ble.service \
    file://mamabear-uwb.service \
    file://bt_ble_expect.sh \
    file://sfl_ble.sh \
    file://sfl_uwb.sh \
    file://bt.sh \
"
SRCREV = "a83ac8f49da82dbb194323f1a52e457fbaf7fee7"

S = "${WORKDIR}/git"

inherit qt6-cmake systemd

SYSTEMD_SERVICE_${PN} = "${BPN}.service"
SYSTEMD_SERVICE_${PN} = "mamabear-ble.service"
SYSTEMD_SERVICE_${PN} = "mamabear-uwb.service"

FILES:${PN} += "\
    /opt/mamabear \
    ${systemd_system_unitdir}/${BPN}.service \
    ${systemd_system_unitdir}/mamabear-ble.service \
    ${systemd_system_unitdir}/mamabear-uwb.service \
    ${systemd_system_unitdir}/bt_ble_expect.sh \
    ${systemd_system_unitdir}/sfl_ble.sh \
    ${systemd_system_unitdir}/sfl_uwb.sh \
    ${systemd_system_unitdir}/bt.sh \
"

RDEPENDS:${PN} = "\
    liberation-fonts \
    mosquitto \
    mosquitto-clients \
    qtdeclarative-qmlplugins \
"
RDEPENDS:mamabear-app-tools = " expect bash "

require recipes-qt/qt6/qt6.inc

do_install() {
    install -D -m 0755 ${WORKDIR}/sfl_ble.sh ${D}${bindir}/sfl_ble.sh
    install -D -m 0755 ${WORKDIR}/sfl_uwb.sh ${D}${bindir}/sfl_uwb.sh
    install -D -m 0755 ${WORKDIR}/bt_ble_expect.sh ${D}${bindir}/bt_ble_expect.sh
    install -D -m 0755 ${WORKDIR}/bt.sh ${D}${bindir}/bt.sh
    install -D -m 0644 ${WORKDIR}/${BPN}.service ${D}${systemd_system_unitdir}/${BPN}.service
    install -D -m 0644 ${WORKDIR}/mamabear-ble.service ${D}${systemd_system_unitdir}/mamabear-ble.service
    install -D -m 0644 ${WORKDIR}/mamabear-uwb.service ${D}${systemd_system_unitdir}/mamabear-uwb.service
    install -d ${D}/opt/mamabear
    cp -R ${WORKDIR}/build/. ${D}/opt/mamabear/.

    # cleanup stale files
    cd ${D}/opt/mamabear/
    rm -rf .qt* .rcc meta_types CMake* cmake* .ninja* build.ninja appMamabear_autogen
    rm -rf appMamabear_*.qrc appMamabear_*.txt
}
