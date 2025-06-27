DESCRIPTION = "Sample image for Goldilocks Mamabear app"
LICENSE = "MIT"

require dynamic-layers/qt6-layer/recipes-fsl/images/imx-image-full.bb

IMAGE_INSTALL += "\
    mamabear-app \
    qtmultimedia \
"
IMAGE_ROOTFS_EXTRA_SPACE = "640000"

IMAGE_INSTALL:append = "\
    boost \
    boost-dev \
    boost-staticdev \
    camerafw \
    cmake \
    curl \
    docker-moby \
    e2fsprogs-resize2fs \
    ffmpeg \
    g++ \
    gcc \
    git \
    gstreamer1.0-libav \
    htop \
    i2c-tools \
    libopus \
    make \
    mamabear-app \
    opengl-es-cts \
    opensc \
    openssl \
    openssl-bin \
    packagegroup-core-buildessential \
    packagegroup-nxp-zigbee-rcp \
    packagegroup-nxp-otbr \
    packagegroup-qt6-essentials \
    pkgconfig \
    psplash \
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
    sox \
    subversion \
    wifi-autoload \
"
#    packagegroup-qt6-addons
PACKAGECONFIG:append:pn-ffmpeg = " sdl2 "
OT_RCP_BUS = "SPI"

PACKAGECONFIG:append:pn-iptables = " libnftnl"
PACKAGECONFIG:append:pn-gstreamer1.0-plugins-bad = " opusparse opus "
PACKAGECONFIG:append:pn-gstreamer1.0-plugins-base = " opus "


# rsync is only used during development
IMAGE_INSTALL += "rsync"

IMAGE_INSTALL:remove = "linux-firmware-nxp89xx"
