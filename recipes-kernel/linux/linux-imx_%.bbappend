FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

inherit mamabear-ddr

# SRC_URI += "${@bb.utils.contains_any('MACHINE', "fdc-mamabear ", 'file://0001-MATTER-1869-1-Integrate-trusty-drivers.patch', '', d)}"

SRC_URI:append = " \
    file://0001-Add-NXP-UWB-drivers-for-the-SR1xx-UWB-radio-in-the-M.patch \
    file://0001-add-support-for-On-Semi-AR0830-image-sensor-on-Cyclo.patch \
    file://0001-arm64-dts-freescale-build-fdc-mamabear-device-trees.patch \
    file://fdc-mamabear.dts \
    file://fdc-mamabear-rpi-7in-panel.dts \
    file://fdc-mamabear-ar0144.dts \
    file://fdc-mamabear-ar0830.dts \
    file://mamabear.cfg \
    file://fdc-mamabear-rpi-7in-panel-imx219cam.dts \
"

# 4GB board (MAMABEAR_DDR_SIZE = "4GB" in local.conf): 4GB memory node.
SRC_URI += "${@'file://fdc-mamabear-ddr-4gb.dtsi' if d.getVar('MAMABEAR_DDR_SIZE') == '4GB' else ''}"

python () {
    mamabear_ddr_check(d)
}

#TODO: updates needed to the RPI 7" touch screen drivers. Not ready yet for this kernel version.
#    file://add-drivers-for-rpi-7in-display.patch
#    file://0001-add-drivers-for-raspi-7-touch-screen-display.patch
#    file://0001-remove-message-warning-about-hblank-data.patch

do_override_files () {
    # device-tree customizations (the dtb Makefile entries come from the patch above)
    for dts in fdc-mamabear fdc-mamabear-rpi-7in-panel fdc-mamabear-rpi-7in-panel-imx219cam fdc-mamabear-ar0144 fdc-mamabear-ar0830; do
        install -Dm 0644 ${UNPACKDIR}/${dts}.dts ${S}/arch/arm64/boot/dts/freescale/${dts}.dts
    done
    if [ "${MAMABEAR_DDR_SIZE}" = "4GB" ]; then
        install -m 0644 ${UNPACKDIR}/fdc-mamabear-ddr-4gb.dtsi ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear-ddr-4gb.dtsi
        echo '#include "fdc-mamabear-ddr-4gb.dtsi"' >> ${S}/arch/arm64/boot/dts/freescale/fdc-mamabear.dts
    fi
}
addtask override_files after do_kernel_configme before do_configure

deltask kernel_localversion
deltask merge_delta_config
