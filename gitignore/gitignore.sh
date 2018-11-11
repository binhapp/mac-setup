#!/bin/bash

--config() {
  rm ~/.gitignore_global
  ln -s $MAC_SETUP_DIR/gitignore/gitignorerc ~/.gitignore_global
}

$@
