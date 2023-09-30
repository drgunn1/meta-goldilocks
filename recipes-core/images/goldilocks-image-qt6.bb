DESCRIPTION = "Sample image for Goldilocks Mamabear app"
LICENSE = "MIT"

require dynamic-layers/qt6-layer/recipes-fsl/images/fsl-image-qt6.bb

IMAGE_INSTALL += "\
    mamabear-app \
    qtmultimedia \
"

IMAGE_ROOTFS_EXTRA_SPACE = "640000"
IMAGE_INSTALL:append = " rng-tools openssl-bin openssl"
IMAGE_INSTALL:append = " cmake curl git subversion "
IMAGE_INSTALL:append = " python3-pip python3-click python3-cryptography python3-pycparser python3-cffi "
IMAGE_INSTALL:append = " e2fsprogs-resize2fs "
IMAGE_INSTALL:append = " packagegroup-core-buildessential gcc g++ make pkgconfig"
IMAGE_INSTALL:append = " i2c-tools "
IMAGE_INSTALL:append = " python3-misc python3-matplotlib python3-pyserial python3-pyzmq "
IMAGE_INSTALL:append = " opensc sdc-tests opengl-es-cts "
IMAGE_INSTALL:append = " mamabear-app qtmultimedia "

OT_RCP_BUS = "SPI"
IMAGE_INSTALL:append = " boost boost-dev boost-staticdev "
PACKAGECONFIG:append:pn-iptables = " libnftnl"
MATTER_PY_PATH="/home/don/imx-yocto-bsp-6.1.1_1.0.0/matter_venv/bin/python3"

# rsync is only used during development
IMAGE_INSTALL += "rsync"

IMAGE_INSTALL:remove = "linux-firmware-nxp89xx"
