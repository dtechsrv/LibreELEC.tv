# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gstreamer"
PKG_VERSION="1.20.3"
PKG_SHA256="607daf64bbbd5fb18af9d17e21c0d22c4d702fffe83b23cb22d1b1af2ca23a2a"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/gstreamer/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain ffmpeg libvorbis-system flac-system"
PKG_LONGDESC="GStreamer open-source multimedia framework core library"

pre_configure_target() {
PKG_MESON_OPTS_TARGET="-Dlibunwind=disabled \
                       -Dexamples=disabled \
                       -Dtests=disabled \
                       -Dnls=disabled \
                       -Dpackage-name=gstreamer \
                       -Dpackage-origin=LibreELEC.tv \
                       -Ddoc=disabled"
}

post_makeinstall_target() {
  # clean up
  safe_remove ${INSTALL}/usr/share
}
