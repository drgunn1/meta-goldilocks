inherit mamabear-ddr

# Tell OP-TEE how much DDR the board has. The imx-mx8mpevk platform defaults
# to the EVK's 6GB (CFG_DDR_SIZE=0x180000000). MAMABEAR_DDR_SIZE selects
# 2GB or 4GB (see classes/mamabear-ddr.bbclass).
EXTRA_OEMAKE:append:fdc-mamabear = " CFG_DDR_SIZE=${MAMABEAR_DDR_BYTES}"
