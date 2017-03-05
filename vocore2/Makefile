# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=VoCore2
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/VoCore2
  TITLE:=VoCore2
  DEPENDS:=@TARGET_ramips_mt7688_LinkIt7688||@TARGET_ramips_mt7628 \
  	+gdbserver +curl +strace +coreutils +coreutils-stty \
  	+avahi-nodbus-daemon +mountd +mjpg-streamer \
	+uhttpd +rpcd +rpcd-mod-iwinfo +git +git-http +samba36-server \
	+luci +luci-theme-openwrt +luci-app-mjpg-streamer +luci-app-samba +luci-lib-json \
	+rpcd-mod-rpcsys +cgi-io +spi-tools +uboot-envtools \
	+kmod-fs-vfat +kmod-fs-exfat +kmod-i2c-core +kmod-i2c-ralink \
	+kmod-nls-base +kmod-nls-cp437 +kmod-nls-iso8859-1 \
	+kmod-nls-iso8859-15 +kmod-nls-iso8859-2 +kmod-nls-utf8 \
	+kmod-sdhci-mt7620 +kmod-usb-storage \
	+kmod-video-core +kmod-video-uvc \
	+mtk-sdk-wifi +tcpdump-mini

  CATEGORY:=Base system
  DEFAULT:=y
endef

define Package/VoCore2/Description
	Selects packages for the VoCore2 includes-
	Avahi, Mjpg Streamer, Samba, Luci, File system support,
endef


$(eval $(call BuildPackage,VoCore2))

PKG_NAME:=VoCore2-Ultimate
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/VoCore2-Ultimate
  TITLE:=VoCore2-Ultimate
  DEPENDS:=@TARGET_ramips_mt7688_LinkIt7688||@TARGET_ramips_mt7628 \
  	+gdbserver +curl +strace +coreutils +coreutils-stty \
  	+avahi-nodbus-daemon +mountd +mjpg-streamer \
	+uhttpd +rpcd +rpcd-mod-iwinfo +git +git-http +samba36-server \
	+luci +luci-theme-openwrt +luci-app-mjpg-streamer +luci-app-samba +luci-lib-json \
	+rpcd-mod-rpcsys +cgi-io +spi-tools +uboot-envtools \
	+kmod-fs-vfat +kmod-fs-exfat +kmod-i2c-core +kmod-i2c-ralink \
	+kmod-nls-base +kmod-nls-cp437 +kmod-nls-iso8859-1 \
	+kmod-nls-iso8859-15 +kmod-nls-iso8859-2 +kmod-nls-utf8 \
	+kmod-sdhci-mt7620 +kmod-usb-storage \
	+kmod-video-core +kmod-video-uvc \
	+mtk-sdk-wifi +tcpdump-mini

  CATEGORY:=Base system
  DEFAULT:=y
endef

define Package/VoCore2-Ultimate/Description
	Selects packages for the VoCore2 includes-
	Avahi, Mjpg Streamer, Samba, Luci, File system support,
endef


$(eval $(call BuildPackage,VoCore2-Ultimate))

