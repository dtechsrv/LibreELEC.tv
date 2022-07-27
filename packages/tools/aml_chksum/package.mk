# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="aml_chksum"
PKG_LICENSE="GPLv2"
PKG_VERSION="4b1a54bc75f1d865f09008ad02fda5e68d42d8de"
PKG_SHA256="d54c49b5a5cf5ce4857c063d815cebb59e942e7c2c34b77169202d2b12c7ba5a"
PKG_SITE="https://github.com/LibreELEC/aml_chksum"
PKG_URL="https://github.com/LibreELEC/aml_chksum/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="aml_chksum is a small tool that writes new headers with updated offsets and checksums"
PKG_TOOLCHAIN="manual"
PKG_STAMP="${UBOOT_SYSTEM}"

make_host() {
  make V=1 all
}
