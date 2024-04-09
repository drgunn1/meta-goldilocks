FILESEXTRAPATHS:prepend := "${THISDIR}/files:"


SRC_URI:append = "\
	file://0001-initial-U-boot-commit-for-Future-Mama-bear-board.patch \
	file://0002-add-support-for-2600MTS-memory-speed.patch \
	file://0003-updates-to-u-boot-to-modify-DDR4-memory-configuration-Enable-2600MTS.patch \
	file://0004-updated-ddr4-timing-for-the-Kingston-3200MTS-memory.patch \
	file://0005-update-the-device-tree-to-reflect-hardware-changes-on-USB-C-interface.patch \
	file://0006-Update-imx8mp_evk.h-to-configure-2GB-DDR-memory.patch \
"
