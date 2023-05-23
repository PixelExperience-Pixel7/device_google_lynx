#!/bin/sh

# Memory the current directory
CUR_DIR=$(pwd)

# Create DTS symlink if missing
SYMLINK_TARGET=kernel/google/gs201/private/gs-google/arch/arm64/boot/dts/google/devices

croot && mkdir -p $SYMLINK_TARGET
ln -sf ../../../../../../../devices/google/lynx/dts/ $SYMLINK_TARGET/lynx

# Return cd to memoried directory
cd $CUR_DIR ; unset CUR_DIR

return
