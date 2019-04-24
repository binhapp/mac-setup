
export DOTFILES_DIR=~/.dotfiles

clone_dotfiles_repo() {
  if [ ! -d "$DOTFILES_DIR" ]; then
    git clone -b dotfiles https://github.com/blcsntb/mac-setup "$DOTFILES_DIR"
  fi
}

update_dotfiles_repo() {
  if [ -d "$DOTFILES_DIR" ]; then
    (cd "$DOTFILES_DIR"; git add . && git stash && git pull)
  fi
}

for f in $DOTFILES_DIR/.functions/*; do source $f; done

alias install_dotfiles='
  clone_dotfiles_repo
  clone_z
  download_fonts
  link_dotfiles
  install_oh_my_zsh
  install_homebrew
  install_rbenv
  install_nvm
  source ~/.zshrc
  # brew_cask_install
  brew_install
  pip3_install && source ~/.zshrc
  gem_install
  npm_install
'