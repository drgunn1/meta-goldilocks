
FILESEXTRAPATHS:prepend := "${THISDIR}/linux-imx-future:"

SRC_URI += "\
    file://0001-kernel-modifications-for-release-0.1-of-the-Mamabear-BSP.patch \
    file://0002-updated-device-tree-defconfig-fixed-bug-with-MIPI-Display-generatin.patch \
    file://0003-Add-device-tree-support-for-the-imx219-raspi-v2-camera-module.patch \
    file://0004-Update-device-tree-to-reflect-hardware-changes.patch \
    file://0005-Update-DTS-so-that-the-Raspi-7in-display-is-grouped-with-the-Raspi-CamV2.patch \
"