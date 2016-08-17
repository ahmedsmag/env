#!/bin/bash

$GOMA_DIR/goma_ctl.py ensure_start

ninja -C $CHROMIUM_DIR/out/Release -j150 chrome
