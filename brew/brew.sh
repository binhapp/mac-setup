#!/bin/bash

$MAC_SETUP_DIR/install.sh brew \
  --script-install '
    [ ! "$CI" ] && \
      [ ! -d ~/homebrew ] && \
      mkdir ~/homebrew && \
      curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/homebrew' \
  --script-uninstall '
    [ ! "$CI" ] && \
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
    [ ! "$CI" ] && \
      rm -rf ~/homebrew' \
  $@
