FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Changes to upstream u-boot-imx files (board code, DDR4 timing, memory map,
# dtb Makefile entry) are carried as a patch so they rebase cleanly on new
# BSP releases. New board-only files are installed by do_override_sources.
SRC_URI += "\
    file://0001-imx8mp_evk-fdc-mamabear-board-support.patch \
    file://fdc_mamabear_defconfig \
    file://fdc-mamabear.dts \
    file://fdc-mamabear-u-boot.dtsi \
"

do_override_sources () {
    install -Dm 0644 ${UNPACKDIR}/fdc_mamabear_defconfig ${S}/configs/fdc_mamabear_defconfig
    install -Dm 0644 ${UNPACKDIR}/fdc-mamabear.dts ${S}/arch/arm/dts/fdc-mamabear.dts
    install -Dm 0644 ${UNPACKDIR}/fdc-mamabear-u-boot.dtsi ${S}/arch/arm/dts/fdc-mamabear-u-boot.dtsi
}
addtask override_sources after do_patch before do_configure
