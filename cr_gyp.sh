#!/bin/bash

export GYP_DEFINES="disable_nacl=1 use_goma=1 fastbuild=1 debug_devtools=1"
$CHROMIUM_DIR/build/gyp_chromium -Gconfig=Release
