FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "\
    file://ddr4_timing.c \
    file://fdc_mamabear_defconfig \
    file://imx8mp_evk.c \
    file://imx8mp_evk.h \
    file://spl.c \
    file://fdc-mamabear.dts \
    file://Makefile \
    file://fdc-mamabear-u-boot.dtsi \
"
#    file://imx8mp-evk-u-boot.dtsi
#    file://imx8mp-evk.dts

do_override_sources () {
    install -Dm 0644 ${WORKDIR}/sources-unpack/ddr4_timing.c ${S}/board/freescale/imx8mp_evk/ddr4_timing.c
    install -Dm 0644 ${WORKDIR}/sources-unpack/fdc_mamabear_defconfig ${S}/configs/fdc_mamabear_defconfig
    install -Dm 0644 ${WORKDIR}/sources-unpack/imx8mp_evk.c ${S}/board/freescale/imx8mp_evk/imx8mp_evk.c
    install -Dm 0644 ${WORKDIR}/sources-unpack/imx8mp_evk.h ${S}/include/configs/imx8mp_evk.h
#    install -Dm 0644 ${WORKDIR}/sources-unpack/imx8mp-evk.dts ${S}/arch/arm/dts/imx8mp-evk.dts
    install -Dm 0644 ${WORKDIR}/sources-unpack/fdc-mamabear.dts ${S}/arch/arm/dts/fdc-mamabear.dts
    install -Dm 0644 ${WORKDIR}/sources-unpack/Makefile ${S}/arch/arm/dts/Makefile
#    install -Dm 0644 ${WORKDIR}/sources-unpack/imx8mp-evk-u-boot.dtsi ${S}/arch/arm/dts/imx8mp-evk-u-boot.dtsi
    install -Dm 0644 ${WORKDIR}/sources-unpack/fdc-mamabear-u-boot.dtsi ${S}/arch/arm/dts/fdc-mamabear-u-boot.dtsi
    install -Dm 0644 ${WORKDIR}/sources-unpack/spl.c ${S}/board/freescale/imx8mp_evk/spl.c
}
addtask override_sources after do_patch before do_configure
