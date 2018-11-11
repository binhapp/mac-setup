#!/bin/bash

MAC_SETUP_DIR=~/mac-setup

if [ ! -d ~/mac-setup ]; then
  git clone https://github.com/blcsntb/mac-setup $MAC_SETUP_DIR
else
  cd $MAC_SETUP_DIR
  git pull
fi

--all() {
  $MAC_SETUP_DIR/iterm2/iterm2.sh $@
  $MAC_SETUP_DIR/zsh/zsh.sh $@
  $MAC_SETUP_DIR/python/python.sh $@
  $MAC_SETUP_DIR/powerline/powerline.sh $@
  $MAC_SETUP_DIR/z/z.sh $@
  $MAC_SETUP_DIR/vim/vim.sh $@
  $MAC_SETUP_DIR/gitignore/gitignore.sh $@
  $MAC_SETUP_DIR/vscode/vscode.sh $@
}

if [ "$1" == "" ]; then
  --all --config
else
  $@
fi
