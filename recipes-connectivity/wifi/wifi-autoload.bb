SUMMARY = "sdc-tests"
DESCRIPTION = "SDC test files"
LICENSE = "CLOSED"

SRC_URI = "\
    file://modules.conf \
    file://moal.conf\
"



do_install () {
    install -d ${D}/etc/modules-load.d
    install -m 0644 ${UNPACKDIR}/modules.conf ${D}/etc/modules-load.d
    install -m 0644 ${UNPACKDIR}/moal.conf ${D}/etc/modules-load.d
}

S = "${UNPACKDIR}"
