
DOTFILES_DIR=~/.dotfiles

install_oh_my_zsh() {
  if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    sudo chsh -s /bin/zsh "$USER"
  fi
}

install_homebrew() {
  if ! type brew >/dev/null 2>&1; then
    mkdir ~/.homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/.homebrew
  fi
}

install_nvm() {
  if ! type nvm >/dev/null 2>&1; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
  fi
}

install_rvm() {
  # if ! type rvm >/dev/null 2>&1; then
  #   \curl -sSL https://get.rvm.io | bash -s stable --ruby
  # fi
}

clone_z() {
  if [ ! -d ~/.zrupa ]; then
    git clone https://github.com/rupa/z ~/.zrupa
  fi
}

download_fonts() {
  FONT_PATH="$HOME/Library/Fonts/Meslo LG M Regular for Powerline.ttf"
  [ -f "$FONT_PATH" ] || curl https://raw.githubusercontent.com/powerline/fonts/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf --output "$FONT_PATH"
}

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

brew_install() {
  brew install carthage
  brew install python
  brew install tree
  brew install watchman
  brew install zsh-autosuggestions
  brew install zsh-completions
  brew install zsh-syntax-highlighting
}

nvm_install() {
  nvm install --lts
  npm install -g yarn
  npm install -g vmd
}

pip3_install() {
  pip3 install powerline-shell
}

gem_install() {
  gem install cocoapods
  gem install fastlane
}

link_dotfiles() {
  # bashrc
  [ -f ~/.bashrc ] && rm ~/.bashrc
  ln -s $DOTFILES_DIR/.bashrc ~

  # zshrc
  [ -f ~/.zshrc ] && rm ~/.zshrc
  ln -s $DOTFILES_DIR/.zshrc ~

  # vimrc
  [ -f ~/.vimrc ] && rm ~/.vimrc
  ln -s $DOTFILES_DIR/.vimrc ~

  # gemrc
  [ -f ~/.gemrc ] && rm ~/.gemrc
  ln -s $DOTFILES_DIR/.gemrc ~

  # vmdrc
  [ -f ~/.vmdrc ] && rm ~/.vmdrc
  ln -s $DOTFILES_DIR/.vmdrc ~

  # gitignore_global
  [ -f ~/.gitignore_global ] && rm ~/.gitignore_global
  ln -s $DOTFILES_DIR/.gitignore_global ~

  # powerline-shell
  DIR=.config/powerline-shell
  mkdir -p ~/$DIR
  [ -f ~/$DIR/config.json ] && rm ~/$DIR/config.json
  ln -s $DOTFILES_DIR/$DIR/config.json ~/$DIR

  # iterm2
  DIR=Library/Preferences
  cp $DOTFILES_DIR/$DIR/com.googlecode.iterm2.plist ~/$DIR

  # spectacle
  DIR="Library/Application Support/Spectacle"
  mkdir -p "$HOME/$DIR"
  [ -f "$HOME/$DIR/Shortcuts.json" ] && rm "$HOME/$DIR/Shortcuts.json"
  ln -s "$DOTFILES_DIR/$DIR/Shortcuts.json" "$HOME/$DIR"

  # vscode
  DIR="Library/Application Support/Code/User"
  mkdir -p "$HOME/$DIR"
  [ -f "$HOME/$DIR/settings.json" ] && rm "$HOME/$DIR/settings.json"
  [ -f "$HOME/$DIR/keybindings.json" ] && rm "$HOME/$DIR/keybindings.json"
  ln -s "$DOTFILES_DIR/$DIR/settings.json" "$HOME/$DIR"
  ln -s "$DOTFILES_DIR/$DIR/keybindings.json" "$HOME/$DIR"
}

dotfiles() {
  install_oh_my_zsh
  install_homebrew
  install_nvm
  clone_z
  download_fonts
  brew_cask_install
  brew_install
  pip3_install
  nvm_install
  link_dotfiles
}

install_dotfiles() {
  if [ ! -d "$DOTFILES_DIR" ]; then
    git clone https://github.com/blcsntb/mac-setup "$DOTFILES_DIR"
  fi
  dotfiles
}

update_dotfiles() {
  if [ -d "$DOTFILES_DIR" ]; then
    (cd "$DOTFILES_DIR"; git add . && git stash --quiet && git pull)
  fi
  dotfiles
}
