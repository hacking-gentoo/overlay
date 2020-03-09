# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="Collection of development related tools for Gentoo Linux"
HOMEPAGE="https://github.com/hacking-gentoo/gentoolbox"
LICENSE="GPL-2"

if [[ ${PV} = *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/hacking-gentoo/gentoolbox"
	EGIT_BRANCH="master"
else
	SRC_URI="https://github.com/hacking-gentoo/gentoolbox/archive/${PV}.tar.gz -> ${P}.tar.gz"
fi

SLOT="0"
IUSE=""

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

RDEPEND="app-portage/gentoolkit[${PYTHON_USEDEP}]"

DISTUTILS_USE_SETUPTOOLS=no

python_prepare_all() {
	python_setup
	echo VERSION="${PVR}" "${PYTHON}" setup.py set_version
	VERSION="${PVR}" "${PYTHON}" setup.py set_version
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
}

python_test() {
	"${EPYTHON}" -m unittest discover -v || die "Tests failed"
}
