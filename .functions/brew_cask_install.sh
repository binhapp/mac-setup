brew_cask_install() {
  casks=(
    alfred
    android-studio
    calibre
    google-chrome
    iterm2
    skype
    slack
    sourcetree
    spectacle
    spotify
    visual-studio-code
  )
  for cask in "${casks[@]}"; do
    brew cask install $cask || brew cask install $cask --force
  done
}