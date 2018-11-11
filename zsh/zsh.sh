#!/bin/bash

--config() {
  rm ~/.zshrc
  ln -s $MAC_SETUP_DIR/zsh/zshrc ~/.zshrc
}

$@
