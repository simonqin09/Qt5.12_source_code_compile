#!/bin/sh


set -e

#QTAPP="helloworldUI"
QTAPP="videotest"

export QT_ROOT=/opt/Qt-5.12.4
export QT_QPA_PLATFORM_PLUGIN_PATH=$QT_ROOT/plugins
export LD_LIBRARY_PATH=$QT_ROOT/lib:$LD_LIBRARY_PATH
export QML_IMPORT_PATH=$QT_ROOT/qml
export QML2_IMPORT_PATH=$QT_ROOT/qml
export QT_GSTREAMER_CAMERABIN_VIDEOSRC="imxv4l2src"

#./${QTAPP} &
./${QTAPP} -url file:///home/root/ready-player-one-trailer-2_h720p.mov &

exit 1

