################################################################################
#
# osmo-trx-pluto
#
################################################################################

OSMO_TRX_PLUTO_VERSION = e672ec28964cef636bd3fddef301e246d5d7090b
OSMO_TRX_PLUTO_SITE = https://github.com/Manawyrm/osmo-trx-pluto.git
OSMO_TRX_PLUTO_SITE_METHOD = git
OSMO_TRX_PLUTO_LICENSE = GPL-3.0+
OSMO_TRX_PLUTO_LICENSE_FILES = COPYING
OSMO_TRX_PLUTO_DEPENDENCIES = \
	host-pkgconf \
	libosmocore \
	libiio \
	libad9361-iio \
	fftw-single

OSMO_TRX_PLUTO_AUTORECONF = YES

OSMO_TRX_PLUTO_CONF_OPTS = \
	--with-pluto \
	--with-neon \
	--disable-doxygen \
	--disable-manuals \
	--disable-multi-arfcn

$(eval $(autotools-package))
