#!/bin/bash

alias() {
  ./alias/bin $@
}

all() {
  ~/mac-setup/zsh/zsh.sh $@
  ~/mac-setup/rvm/rvm.sh $@
  ~/mac-setup/nvm/nvm.sh $@
  ~/mac-setup/python/python.sh $@
  ~/mac-setup/z/z.sh $@
  ~/mac-setup/iterm2/iterm2.sh $@
  ~/mac-setup/vim/vim.sh $@
  ~/mac-setup/vscode/vscode.sh $@
  ~/mac-setup/gitignore/gitignore.sh $@
}

uninstall() {
  ~/mac-setup/zsh/zsh.sh --uninstall
  ~/mac-setup/rvm/rvm.sh --uninstall
  ~/mac-setup/nvm/nvm.sh --uninstall
  echo Please restart you session
}

--test() {
  alias --test
}

if [ "$1" == "" ]; then
  --init
  all --install --config
else
  $@
fi
