sync_brew_cask_list() {
  casks=(`cat $DOTFILES_DIR/.config/brew_cask_list.txt`)
  for cask in "${casks[@]}"; do
    brew cask install $cask || brew cask install $cask --force
  done
}