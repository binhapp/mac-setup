#!/bin/bash

if [ ! -d $MAC_SETUP_DIR ]; then
  git clone https://github.com/blcsntb/mac-setup $MAC_SETUP_DIR
else
  cd $MAC_SETUP_DIR
  git pull --quiet
fi

--all() {
  $MAC_SETUP_DIR/zsh/zsh.sh $@
  $MAC_SETUP_DIR/rvm/rvm.sh $@
  $MAC_SETUP_DIR/nvm/nvm.sh $@
  $MAC_SETUP_DIR/python/python.sh $@
  $MAC_SETUP_DIR/z/z.sh $@
  $MAC_SETUP_DIR/iterm2/iterm2.sh $@
  $MAC_SETUP_DIR/vim/vim.sh $@
  $MAC_SETUP_DIR/vscode/vscode.sh $@
  $MAC_SETUP_DIR/gitignore/gitignore.sh $@
}

if [ "$1" == "" ]; then
  --all --install --config
else
  --all $@
fi
