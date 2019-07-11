#!/bin/bash

# configure bash for qt5.12.3
./configure -v \
    -opensource -confirm-license \
    -extprefix /usr/local/Qt-5.12.3 \
    -device linux-imx6-g++ \
    -device-option CROSS_COMPILE=${CROSS_COMPILE} \
    -sysroot ${SDKTARGETSYSROOT} \
    -I ${SDKTARGETSYSROOT}/usr/include \
    -L ${SDKTARGETSYSROOT}/usr/lib \
    -no-pch -pkg-config -release -shared -make libs \
    -linuxfb -gstreamer -no-pulseaudio -no-webengine-pulseaudio \
    -xcb -xcb-xlib -no-eglfs \
    -qpa xcb \
    -nomake examples -nomake tests \
    -opengl es2 \
