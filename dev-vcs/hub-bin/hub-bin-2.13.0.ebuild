# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A command-line tool that makes git easier to use with GitHub"
HOMEPAGE="https://github.com/github/hub"
SRC_URI="https://github.com/github/hub/releases/download/v2.13.0/hub-linux-amd64-2.13.0.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND="!dev-vcs/hub"
RDEPEND="${DEPEND}
	>=dev-vcs/git-1.7.3"

QA_PREBUILT="/usr/bin/hub"
S="${WORKDIR}/hub-linux-amd64-${PV}"

src_install() {
	einstalldocs
	dobin bin/*
	doman share/man/man1/*.1
	dodoc share/doc/hub-doc/*.html
}
