#!/bin/bash

set -eux

# https://www.tuxarena.com/2015/10/how-to-compile-latest-wine-32-bit-on-64-bit-ubuntu-15-10/


sudo apt-get install build-essential gcc-multilib \
    libx11-dev:i386 libfreetype6-dev:i386 libxcursor-dev:i386 \
     libxi-dev:i386 libxshmfence-dev:i386 libxxf86vm-dev:i386 \
     libxrandr-dev:i386 libxinerama-dev:i386 libxcomposite-dev:i386 \
     libglu1-mesa-dev:i386 libosmesa6-dev:i386 libpcap0.8-dev:i386 \
     libdbus-1-dev:i386 libncurses5-dev:i386 libsane-dev:i386 \
     libv4l-dev:i386 libgphoto2-dev:i386 liblcms2-dev:i386 \
     gstreamer1.0-plugins-base:i386 libcapi20-dev:i386 \
     libcups2-dev:i386 libfontconfig1-dev:i386 libgsm1-dev:i386 \
     libtiff5-dev:i386 libmpg123-dev:i386 libopenal-dev:i386 \
     libldap2-dev:i386 libjpeg-dev:i386


# TODO libgnutls-dev:i386

if ! [ -d wine  ]; then
    git clone https://github.com/wine-mirror/wine.git
fi

pushd wine

./configure
make -j20
sudo make install


popd