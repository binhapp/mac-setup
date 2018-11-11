#!/bin/bash

--install() {
  [ ! -d $ZSH/z ] && \
    git clone https://github.com/rupa/z $ZSH/z
}

--uninstall() {
  rm -rf $ZSH/z
}

--config() {
  --install
}

$@
