# Copyright 1999-2020 Gentoo Authors
# Copyright 2020 The Trinity Desktop Project
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

TRINITY_NEED_ARTS="optional"
TRINITY_MODULE_NAME="tdeaddons"
inherit trinity-meta-2 db-use

DESCRIPTION="Various plugins for Noatun"

IUSE="sdl berkdb"

COMMON_DEPEND="
	~trinity-base/noatun-${PV}
	berkdb? ( =sys-libs/db-4*:= )
"
DEPEND="${COMMON_DEPEND}
	sdl? ( media-libs/libsdl )
"
RDEPEND="${COMMON_DEPEND}
	sdl? ( media-libs/libsdl[X] )
"

src_configure() {
	local mycmakeargs=(
		-DWITH_SDL="$(usex sdl)"
	)

	if use berkdb; then
		local mycmakeargs+=(
			-DWITH_BERKELEY_DB=ON
			-DBERKELEY_DB_LIBS="$(db_libname)"
			-DBERKELEY_DB_INCLUDE_DIRS="${ROOT}$(db_includedir)"
		)
	else
		local mycmakeargs+=(
			-DWITH_BERKELEY_DB=OFF
		)
	fi

	trinity-meta-2_src_configure
}
