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
    file://mamabear-app.service \
    file://mamabear-ble.service \
    file://mamabear-uwb.service \
    file://bt-ble-expect.sh \
    file://ble-publisher.sh \
    file://uwb-publisher.sh \
    file://bt-setup.sh \
    file://filter_btctl.py \
    file://mamabear-ble.conf \
"
SRCREV = "914f34e6696979c7e72689de975938ac9c8834db"

S = "${WORKDIR}/git"

inherit qt6-cmake systemd

SYSTEMD_SERVICE:${PN} = "\
    mamabear-app.service \
    mamabear-ble.service \
    mamabear-uwb.service \
"

FILES:${PN} += "\
    ${systemd_system_unitdir} \
    /opt/mamabear \
    /etc \
"

RDEPENDS:${PN} = "\
    bash \
    expect \
    liberation-fonts \
    mosquitto \
    mosquitto-clients \
    qtdeclarative-qmlplugins \
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

    install -d ${D}/etc/
    install -m 0644 ${WORKDIR}/mamabear-ble.conf ${D}/etc/

    # systemd units
    install -d ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/${BPN}.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/mamabear-ble.service ${D}${systemd_system_unitdir}/
    install -m 0644 ${WORKDIR}/mamabear-uwb.service ${D}${systemd_system_unitdir}/

    # Qt app
    install -d ${D}/opt/mamabear/app
    cp --no-preserve=ownership -R ${WORKDIR}/build/. ${D}/opt/mamabear/app/.

    # cleanup stale files
    cd ${D}/opt/mamabear/app/
    rm -rf .qt* .rcc meta_types CMake* cmake* .ninja* build.ninja appMamabear_autogen
    rm -rf appMamabear_*.qrc appMamabear_*.txt
}
