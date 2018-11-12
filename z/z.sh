#!/bin/bash

$MAC_SETUP_DIR/install.sh z \
  --script-version "" \
  --script-which "echo $ZSH/z" \
  --script-install "
    [ ! -d $ZSH/z ] && \
      git clone https://github.com/rupa/z $ZSH/z" \
  --script-config "
    source $MAC_SETUP_DIR/z/zrc" \
  --script-uninstall "
    [ -d $ZSH/z ] && \
      rm -rf $ZSH/z" \
  $@
