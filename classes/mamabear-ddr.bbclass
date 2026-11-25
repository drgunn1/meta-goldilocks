# DDR size selection for fdc-mamabear.
#
# MAMABEAR_DDR_SIZE (set in local.conf, default "2GB" from the machine
# config) selects the memory map used by u-boot, OP-TEE and the device trees.
# Supported values: "2GB", "4GB".

MAMABEAR_DDR_BYTES = "${@mamabear_ddr_bytes(d)}"

def mamabear_ddr_bytes(d):
    sizes = {'2GB': '0x80000000', '4GB': '0x100000000'}
    value = d.getVar('MAMABEAR_DDR_SIZE')
    if value not in sizes:
        bb.fatal('MAMABEAR_DDR_SIZE = "%s" is not supported. Use one of: %s'
                 % (value, ', '.join(sizes)))
    return sizes[value]

def mamabear_ddr_check(d, timing_file=None):
    mamabear_ddr_bytes(d)
    if timing_file and d.getVar('MAMABEAR_DDR_SIZE') == '4GB':
        if not bb.utils.which(d.getVar('FILESPATH'), timing_file):
            bb.fatal(
                'MAMABEAR_DDR_SIZE is "4GB" but %s was not found. Generate the '
                'DDR timing for the 4GB board with the NXP i.MX8MP DDR Tool and '
                'save it as meta-goldilocks/recipes-bsp/u-boot/files/%s'
                % (timing_file, timing_file))
