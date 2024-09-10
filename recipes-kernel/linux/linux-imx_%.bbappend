FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
    file://add-drivers-for-rpi-7in-display.patch \
    file://defconfig \
    file://0001-Add-NXP-UWM-drivers-for-the-SR1xx-UWB-radio-in-the-M.patch \
    file://fdc-mamabear.dts \
    file://fdc-mamabear-imx219.dts \
    file://fdc-mamabear-ar0144.dts \
    file://Makefile \
    file://0001-remove-message-warning-about-hblank-data.patch \
"

# Override meta-imx's KBUILD_DEFCONFIG,
# thus ensuring "file://defconfig" is used
unset KBUILD_DEFCONFIG

do_override_files () {
    # custom defconfig
    install -Dm 0644 ${WORKDIR}/defconfig ${S}/arch/arm64/configs/imx_v8_defconfig

    # device-tree customizations
    install -Dm 0644 ${WORKDIR}/fdc-mamabear.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear.dts
    install -Dm 0644 ${WORKDIR}/fdc-mamabear-imx219.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear-imx219.dts
    install -Dm 0644 ${WORKDIR}/fdc-mamabear-ar0144.dts ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear-ar0144.dts
    install -Dm 0644 ${WORKDIR}/Makefile ${S}/arch/arm64/boot/dts/freescale/Makefile
}
addtask override_files after do_kernel_configme before do_configure

deltask kernel_localversion
deltask merge_delta_config
