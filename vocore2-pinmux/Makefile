# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=mtk-pinmux
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/mtk-pinmux
  SECTION:=ralink
  CATEGORY:=Ralink SDK
  TITLE:=MTK pinmux and reclk utilities
  DEPENDS:=@TARGET_ramips_mt7688_LinkIt7688||@TARGET_ramips_mt7628
endef

define Package/mtk-sdk-wifi/description
 Utilities to manipulate pinmux assignments
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
        $(TARGET_CC) $(TARGET_CFLAGS) $(EXTRA_CFLAGS) -Wall -Werror -o $(PKG_BUILD_DIR)/pinmux src/pinmux.c ; \
        $(TARGET_CC) $(TARGET_CFLAGS) $(EXTRA_CFLAGS) -Wall -Werror -o $(PKG_BUILD_DIR)/refclk src/refclk.c
endef

define Package/mtk-pinmux/install
	$(INSTALL_DIR) $(1)/sbin
	
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/pinmux $(1)/sbin/mt76x8_pinmux
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/refclk $(1)/sbin/mt76x8_reclk
endef

$(eval $(call BuildPackage,mtk-pinmux))
