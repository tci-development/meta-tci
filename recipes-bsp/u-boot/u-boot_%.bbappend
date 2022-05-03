FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-quirk-disable-rockchip_show_logo.patch \
	file://0001-rk3288_defconfig-disable-GPT.patch \
"

do_install:append() {
	install -m 644 ${B}/idblock.img ${B}/trust.img ${D}/boot/
}

PACKAGE_BEFORE_PN += "${PN}-bins"
FILES:${PN}-bins = " \
	/boot/idblock.img \
	/boot/trust.img \
"
