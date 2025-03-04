SUMMARY = "camerafw"
DESCRIPTION = "ON Semi AP1302 based firmware"
LICENSE = "CLOSED"

FILES:${PN} += "\
     ${base_libdir}/firmware/imx/camera \
"

SRC_URI = "\
	file://AR0830_PRISM_48MEXTCLK_2LANE_NXP.bin \
	file://ap1302.fw \
"



do_install () {
    install -d ${D}${base_libdir}/firmware/imx/camera/
    install -m 0644 ${WORKDIR}/AR0830_PRISM_48MEXTCLK_2LANE_NXP.bin ${D}${base_libdir}/firmware/imx/camera
    install -m 0644 ${WORKDIR}/ap1302.fw ${D}${base_libdir}/firmware/imx/camera
}

