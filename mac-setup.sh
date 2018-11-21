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

install() {
  ~/mac-setup/zsh/zsh.sh --install --config
  ~/mac-setup/rvm/rvm.sh --install --config
  ~/mac-setup/nvm/nvm.sh --install --config
  echo Please restart your session
}

uninstall() {
  ~/mac-setup/zsh/zsh.sh --uninstall
  ~/mac-setup/rvm/rvm.sh --uninstall
  ~/mac-setup/nvm/nvm.sh --uninstall
  echo Please restart your session
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
