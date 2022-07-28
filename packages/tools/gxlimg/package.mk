# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gxlimg"
PKG_LICENSE="BSD-2-Clause License"
PKG_VERSION="da6c7f92e23ec39edf61aea119d4a9aa919dd340"
PKG_SHA256="fe859dd1975f2717751fa3f870482e9d7aaa2c9eeef1a0ae38e48a311f4c51cc"
PKG_SITE="https://github.com/repk/gxlimg"
PKG_URL="https://github.com/repk/gxlimg/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Boot Image creation tool for Amlogic GXL/GXM/G12A/G12B/SM1 devices"
#PKG_TOOLCHAIN=""
PKG_STAMP="${UBOOT_SYSTEM}"

pre_configure_target(){
  export DEBUG=1
}
