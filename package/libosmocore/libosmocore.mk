################################################################################
#
# libosmocore
#
################################################################################

LIBOSMOCORE_VERSION = 1.14.0
LIBOSMOCORE_SOURCE = libosmocore-$(LIBOSMOCORE_VERSION).tar.bz2
LIBOSMOCORE_SITE = https://ftp.osmocom.org/releases/libosmocore
LIBOSMOCORE_LICENSE = GPL-2.0+, LGPL-2.1+
LIBOSMOCORE_LICENSE_FILES = COPYING
LIBOSMOCORE_INSTALL_STAGING = YES
LIBOSMOCORE_DEPENDENCIES = host-pkgconf libtalloc

LIBOSMOCORE_CONF_OPTS = \
	--disable-doxygen \
	--disable-uring \
	--disable-pcsc \
	--disable-libusb \
	--disable-gnutls \
	--disable-syslog-logging \
	--disable-libmnl \
	--disable-libsctp \
	--disable-external-tests \
	--disable-utilities \
	--disable-gb

$(eval $(autotools-package))
