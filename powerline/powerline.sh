#!/bin/bash

--install() {
  pip install powerline-shell --user
}

--config() {
  --install
  mkdir -p ~/.config/powerline-shell
  rm ~/.config/powerline-shell/config.json
  ln -s $MAC_SETUP_DIR/powerline/config.json ~/.config/powerline-shell/config.json
}

$@
