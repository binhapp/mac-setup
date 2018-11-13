#!/bin/bash

~/mac-setup/install.sh vim \
  --script-version "" \
  --script-config "
    rm ~/.vimrc
    ln -s ~/mac-setup/vim/vimrc ~/.vimrc
    ls -la ~/.vimrc" \
  $@
