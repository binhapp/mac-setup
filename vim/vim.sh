#!/bin/bash

--config() {
  rm ~/.vimrc
  ln -s $MAC_SETUP_DIR/vim/vimrc ~/.vimrc
}

$@
