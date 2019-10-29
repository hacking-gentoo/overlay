# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Upload reports to Codecov for almost every supported language."
HOMEPAGE="https://github.com/codecov/codecov-bash"
COMMIT="14c76ebf675c9026c1f831313c26ed15286f50b4"
SRC_URI="https://github.com/codecov/codecov-bash/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=""

S="${WORKDIR}/codecov-bash-${COMMIT}"

src_install() {
	einstalldocs

	dobin codecov
}
