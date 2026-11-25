FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# SRC_URI += "${@bb.utils.contains_any('MACHINE', "fdc-mamabear ", 'file://0001-MATTER-1869-1-Integrate-trusty-drivers.patch', '', d)}"

SRC_URI:append = " \
    file://0001-Add-NXP-UWB-drivers-for-the-SR1xx-UWB-radio-in-the-M.patch \
    file://0001-add-support-for-On-Semi-AR0830-image-sensor-on-Cyclo.patch \
    file://0001-updated-HDMI-driver-to-prevent-using-modes-with-a-pi.patch \
    file://0001-arm64-dts-freescale-build-fdc-mamabear-device-trees.patch \
    file://fdc-mamabear.dts \
    file://fdc-mamabear-rpi-7in-panel.dts \
    file://fdc-mamabear-ar0144.dts \
    file://fdc-mamabear-ar0830.dts \
    file://mamabear.cfg \
    file://fdc-mamabear-rpi-7in-panel-imx219cam.dts \
"

#TODO: updates needed to the RPI 7" touch screen drivers. Not ready yet for this kernel version.
#    file://add-drivers-for-rpi-7in-display.patch
#    file://0001-add-drivers-for-raspi-7-touch-screen-display.patch
#    file://0001-remove-message-warning-about-hblank-data.patch

do_override_files () {
    # device-tree customizations (the dtb Makefile entries come from the patch above)
    for dts in fdc-mamabear fdc-mamabear-rpi-7in-panel fdc-mamabear-rpi-7in-panel-imx219cam fdc-mamabear-ar0144 fdc-mamabear-ar0830; do
        install -Dm 0644 ${UNPACKDIR}/${dts}.dts ${S}/arch/arm64/boot/dts/freescale/${dts}.dts
    done
}
addtask override_files after do_kernel_configme before do_configure

deltask kernel_localversion
deltask merge_delta_config
