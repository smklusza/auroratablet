#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install \
    screen \
    

# this would install a package from rpmfusion
# rpm-ostree install vlc

# install Kando-menu from github
# install kando() {
# cd /tmp/kando
# curl -L https://github.com/kando-menu/kando/releases/download/v1.4.0/kando-1.4.0-1.x86_64.rpm -o kando-1.4.0-1.x86_64.rpm 
# rpm-ostree install kando-1.4.0-1.x86_64.rpm
# }
#### Example for enabling a System Unit File

systemctl enable podman.socket
