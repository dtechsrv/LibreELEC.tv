# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="availink-firmware"
PKG_VERSION="f7246b13649ca76e6a25784aa793acbfaf5f563a" # 1.8.27679
PKG_SHA256="a4d4947145db2b7eb4c0a35d96f2c198a1094a1f3b89e1b37bc3fe856752483d"
PKG_LICENSE="Availink"
PKG_SITE="https://github.com/availink/linux-firmware-availink"
PKG_URL="https://github.com/availink/linux-firmware-availink/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="availink-firmware: firmwares for Availink DVB demod drivers"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_firmware_dir)/availink
    cp -P availink/* ${INSTALL}/$(get_full_firmware_dir)/availink
}
