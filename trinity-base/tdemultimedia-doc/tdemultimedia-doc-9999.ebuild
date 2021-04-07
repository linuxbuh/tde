# Copyright 2020 Gentoo Authors
# Copyright 2020 The Trinity Desktop Project
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

TRINITY_MODULE_NAME="tdemultimedia"
inherit trinity-meta-2

DESCRIPTION="Documentaion for tdemultimedia-derived packages"

RDEPEND="
	~trinity-base/khelpcenter-${PV}"

