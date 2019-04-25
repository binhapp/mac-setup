backup_brew_cask_list() {
  brew cask list > $DOTFILES_DIR/.config/brew_cask_list.txt
}