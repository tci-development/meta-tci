require recipes-kernel/linux/linux-yocto.inc
require recipes-kernel/linux/linux-rockchip.inc

inherit freeze-rev local-git

SRC_URI = " \
        git://github.com/tci-development/kernel-tci-e04.git;user=git;protocol=ssh;branch=master \
        file://${THISDIR}/files/cgroups.cfg \
"
SRCREV = "226e4d29d691950fafb727eb8dbef7cf8859028c"
S = "${WORKDIR}/git"

KERNEL_VERSION_SANITY_SKIP = "1"
LINUX_VERSION = "4.4.154"

PV = "${LINUX_VERSION}"

SRC_URI_append += "${@bb.utils.contains('IMAGE_FSTYPES', 'ext4', \
		   ' file://${THISDIR}/files/ext4.cfg', \
		   '', \
		   d)}"

