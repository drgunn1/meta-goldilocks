FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "${@bb.utils.contains_any('MACHINE', "fdc-mamabear ", 'file://0001-MATTER-1869-1-Integrate-trusty-drivers.patch', '', d)}"

SRC_URI:append = " \
    file://add-drivers-for-rpi-7in-display.patch \
    file://0001-Add-NXP-UWB-drivers-for-the-SR1xx-UWB-radio-in-the-M.patch \
    file://fdc-mamabear.dts \
    file://fdc-mamabear-rpi-7in-panel.dts \
    file://fdc-mamabear-ar0144.dts \
    file://Makefile \
    file://0001-remove-message-warning-about-hblank-data.patch \
    file://fdc-mamabear-ar0830.dts \
    file://mamabear.cfg \
"

do_override_files () {
    # device-tree customizations
    install -Dm 0644 ${WORKDIR}/fdc-mamabear.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear.dts
    install -Dm 0644 ${WORKDIR}/fdc-mamabear-rpi-7in-panel.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear-rpi-7in-panel.dts
    install -Dm 0644 ${WORKDIR}/fdc-mamabear-ar0144.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear-ar0144.dts
    install -Dm 0644 ${WORKDIR}/fdc-mamabear-ar0830.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear-ar0830.dts
    install -Dm 0644 ${WORKDIR}/Makefile ${S}/arch/arm64/boot/dts/freescale/Makefile
}
addtask override_files after do_kernel_configme before do_configure

deltask kernel_localversion
deltask merge_delta_config
