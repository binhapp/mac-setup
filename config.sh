#!/bin/bash

# clone or pull repo
if [ -d ~/mac-setup ]; then
  cd ~/mac-setup
  git pull
else
  git clone https://github.com/blcsntb/mac-setup ~/mac-setup
fi

# zsh
[ -f ~/.zshrc ] && rm ~/.zshrc
ln -s ~/mac-setup/zsh/.zshrc ~/.zshrc

# vim
[ -f ~/.vimrc ] && rm ~/.vimrc
ln -s ~/mac-setup/vim/.vimrc ~/.vimrc

# gitignore
[ -f ~/.gitignore_global ] && rm ~/.gitignore_global
ln -s ~/mac-setup/gitignore/.gitignore_global ~/.gitignore_global

# vscode
if [ -d /Library/Application\ Support/Code/User ]; then
  rm ~/Library/Application\ Support/Code/User/settings.json 
  ln -s ~/mac-setup/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  rm ~/Library/Application\ Support/Code/User/keybindings.json
  ln -s ~/mac-setup/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
fi
