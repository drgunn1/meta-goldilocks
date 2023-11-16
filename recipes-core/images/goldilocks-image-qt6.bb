DESCRIPTION = "Sample image for Goldilocks Mamabear app"
LICENSE = "MIT"

require dynamic-layers/qt6-layer/recipes-fsl/images/fsl-image-qt6.bb

IMAGE_INSTALL += "\
    mamabear-app \
    qtmultimedia \
"

IMAGE_ROOTFS_EXTRA_SPACE = "640000"

IMAGE_INSTALL:append = "\
    boost \
    boost-dev \
    boost-staticdev \
    cmake \
    curl \
    e2fsprogs-resize2fs \
    g++ \
    gcc \
    git \
    i2c-tools \
    make \
    mamabear-app \
    opengl-es-cts \
    opensc \
    openssl \
    openssl-bin \
    packagegroup-core-buildessential \
    pkgconfig \
    python3-cffi \
    python3-click \
    python3-cryptography \
    python3-matplotlib \
    python3-misc \
    python3-pip \
    python3-pycparser \
    python3-pyserial \
    python3-pyzmq \
    qtmultimedia \
    rng-tools \
    sdc-tests \
    subversion \
"

OT_RCP_BUS = "SPI"

PACKAGECONFIG:append:pn-iptables = " libnftnl"

MATTER_PY_PATH="/home/don/imx-yocto-bsp-6.1.1_1.0.0/matter_venv/bin/python3"

# rsync is only used during development
IMAGE_INSTALL += "rsync"

IMAGE_INSTALL:remove = "linux-firmware-nxp89xx"
