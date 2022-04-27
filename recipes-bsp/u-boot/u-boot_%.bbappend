FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-quirk-disable-rockchip_show_logo.patch \
	file://0001-rk3288_defconfig-disable-GPT.patch \
	file://0001-rockchip-rk3288-add-resin-specific-boot-command.patch \
"
