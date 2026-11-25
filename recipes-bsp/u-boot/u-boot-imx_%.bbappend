FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

inherit mamabear-ddr

# Changes to upstream u-boot-imx files (board code, DDR4 timing, memory map,
# dtb Makefile entry) are carried as a patch so they rebase cleanly on new
# BSP releases. New board-only files are installed by do_override_sources.
SRC_URI += "\
    file://0001-imx8mp_evk-fdc-mamabear-board-support.patch \
    file://fdc_mamabear_defconfig \
    file://fdc-mamabear.dts \
    file://fdc-mamabear-u-boot.dtsi \
"

# 4GB board (MAMABEAR_DDR_SIZE = "4GB" in local.conf): 4GB memory map,
# the 4GB board's DDR timing, and a 4GB device-tree memory node.
MAMABEAR_UBOOT_4GB_SRC = "\
    file://0002-imx8mp_evk-fdc-mamabear-4GB-DDR-memory-map.patch \
    file://ddr4_timing_4gb.c \
    file://fdc-mamabear-ddr-4gb.dtsi \
"
SRC_URI += "${@d.getVar('MAMABEAR_UBOOT_4GB_SRC') if d.getVar('MAMABEAR_DDR_SIZE') == '4GB' else ''}"

python () {
    mamabear_ddr_check(d, 'ddr4_timing_4gb.c')
}

do_override_sources () {
    install -Dm 0644 ${UNPACKDIR}/fdc_mamabear_defconfig ${S}/configs/fdc_mamabear_defconfig
    install -Dm 0644 ${UNPACKDIR}/fdc-mamabear.dts ${S}/arch/arm/dts/fdc-mamabear.dts
    install -Dm 0644 ${UNPACKDIR}/fdc-mamabear-u-boot.dtsi ${S}/arch/arm/dts/fdc-mamabear-u-boot.dtsi
    if [ "${MAMABEAR_DDR_SIZE}" = "4GB" ]; then
        install -m 0644 ${UNPACKDIR}/ddr4_timing_4gb.c ${S}/board/nxp/imx8mp_evk/ddr4_timing.c
        install -m 0644 ${UNPACKDIR}/fdc-mamabear-ddr-4gb.dtsi ${S}/arch/arm/dts/fdc-mamabear-ddr-4gb.dtsi
        echo '#include "fdc-mamabear-ddr-4gb.dtsi"' >> ${S}/arch/arm/dts/fdc-mamabear.dts
    fi
}
addtask override_sources after do_patch before do_configure
