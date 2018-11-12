#!/bin/bash

$MAC_SETUP_DIR/install.sh vim \
  --script-version "" \
  --script-config "
    rm ~/.vimrc
    ln -s $MAC_SETUP_DIR/vim/vimrc ~/.vimrc
    ls -la ~/.vimrc" \
  $@
