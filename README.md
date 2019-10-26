# Hacking Gentoo Overlay
[![Overlay QA](https://github.com/hacking-gentoo/overlay/workflows/Overlay%20QA/badge.svg)](https://github.com/hacking-gentoo/overlay/actions?workflow=Overlay+QA)

[Gentoo Linux](https://www.gentoo.org/get-started/about/) overlay containing additional ebuild files.

## Installation

### Manually

The repo comes with a ready [repos.conf](https://wiki.gentoo.org/wiki//etc/portage/repos.conf) file you just need to add
to your `/etc/portage/repos.conf/` dir:

    curl -sL https://raw.githubusercontent.com/hacking-gentoo/overlay/master/repos.conf > /etc/portage/repos.conf/hacking-gentoo.conf
    emerge --sync

### Using layman

    layman -o https://raw.githubusercontent.com/hacking-gentoo/overlay/master/overlay.xml -f -a hacking-gentoo
