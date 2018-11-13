#!/bin/bash

Z_DIR=~/z

~/mac-setup/install.sh z \
  --script-version "" \
  --script-which "echo $Z_DIR" \
  --script-install "
    [ ! -d $Z_DIR ] && \
      git clone https://github.com/rupa/z $Z_DIR" \
  --script-config "
    source ~/mac-setup/z/zrc" \
  --script-uninstall "
    [ -d $Z_DIR ] && \
      rm -rf $Z_DIR" \
  $@
