GLUON_SITE_PACKAGES := \
  gluon-mesh-batman-adv-15 \
  gluon-alfred \
  gluon-respondd \
  gluon-autoupdater \
  gluon-config-mode-autoupdater \
  gluon-config-mode-contact-info \
  gluon-config-mode-core \
  gluon-config-mode-geo-location \
  gluon-config-mode-hostname \
  gluon-config-mode-mesh-vpn \
  gluon-ebtables-filter-multicast \
  gluon-ebtables-filter-ra-dhcp \
  gluon-luci-admin \
  gluon-luci-autoupdater \
  gluon-luci-portconfig \
  gluon-luci-wifi-config \
  gluon-luci-mesh-vpn-fastd \
  gluon-next-node \
  gluon-mesh-vpn-fastd \
  gluon-radvd \
  gluon-setup-mode \
  gluon-status-page \
  haveged \
  iptables \
  iwinfo \
  iperf \
  fastd-auto-mtu

ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
  kmod-usb-core \
  kmod-usb2 \
  kmod-usb-hid \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-dm9601-ether \
  kmod-r8169 \
  vnstat
endif

DEFAULT_GLUON_RELEASE := wup-$(shell date '+%Y%m%d')
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_PRIORITY ?= 0
GLUON_LANGS ?= de

GLUON_TARGET ?= ar71xx-generic
GLUON_BRANCH := stable

GLUON_ATH10K_MESH ?= ibss
