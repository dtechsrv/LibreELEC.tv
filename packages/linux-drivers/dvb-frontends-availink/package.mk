# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="dvb-frontends-availink"
PKG_VERSION="da782673e37e78d6be550eb87bcd7b6b77b3b8e8" # chewitt/kernel_make
PKG_SHA256="a09c92098323c08cb9d4f868e92f4f36b7107dac786cb385e5c4140447a22720"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/availink/dvb-frontends-availink"
PKG_URL="https://github.com/availink/dvb-frontends-availink/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="dvb-frontends-availink: Availink demodulator drivers"
PKG_IS_KERNEL_PKG="yes"
PKG_TOOLCHAIN="manual"

make_target() {
  kernel_make V=1 CONFIG_DVB_AVAILINK=m -C $(kernel_path) M=$(pwd)
}

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
    cp *.ko ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
}
