# Copyright 1999-2020 Gentoo Authors
# Copyright 2020 The Trinity Desktop Project
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

TRINITY_MODULE_NAME="tdepim"
TSM_EXTRACT_ALSO="libtdepim/ libemailfunctions/ libkmime/"
inherit trinity-meta-2

DESCRIPTION="Trinity PIM identities library"

DEPEND="
	~trinity-base/certmanager-${PV}
	~trinity-base/libkmime-${PV}
	~trinity-base/libtdepim-${PV}
"
RDEPEND="${DEPEND}"
