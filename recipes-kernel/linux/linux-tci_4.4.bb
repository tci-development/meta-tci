require recipes-kernel/linux/linux-yocto.inc
require recipes-kernel/linux/linux-rockchip.inc


inherit freeze-rev local-git

SRC_URI = " \
        file://${TOPDIR}/../kernel-tci-e04.tar.gz \
        file://${THISDIR}/files/cgroups.cfg \
"

S = "${WORKDIR}/kernel-tci-e04"

KERNEL_VERSION_SANITY_SKIP = "1"
LINUX_VERSION = "4.4.154"

PV = "${LINUX_VERSION}"

SRC_URI_append += "${@bb.utils.contains('IMAGE_FSTYPES', 'ext4', \
		   ' file://${THISDIR}/files/ext4.cfg', \
		   '', \
		   d)}"

