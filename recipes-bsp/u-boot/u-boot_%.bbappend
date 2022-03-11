FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-quirk-disable-rockchip_show_logo.patch \
            file://0001-rk3288_defconfig-disable-GPT.patch \
            file://0001-rockchip-rk3288-add-resin-specific-boot-command.patch \
	   "

#---- QUIRK:
#
# use precompiled uboot.img and trust.img because currently it's
# not possible to recompile them... this is a major issue and need
# to get fixed!
#
#SRC_URI += "file://trust.img"
#SRC_URI += "file://uboot.img"
#QUIRK_DIR := "${THISDIR}/${PN}"
#
#do_compile_append() {
#	cd ${B}
#
#	bbnote "${QUIRK_DIR}: Using prebuilt images."
#
#	cp ${QUIRK_DIR}/${RK_TRUST_IMG} .
#	cp ${QUIRK_DIR}/${UBOOT_BINARY} .
#}
