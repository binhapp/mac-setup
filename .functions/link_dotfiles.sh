link_dotfiles() {
  if [ -z "$DOTFILES_DIR" ]; then
    DOTFILES_DIR=~/.dotfiles
  fi

  # zshrc
  [ -f ~/.zshrc ] && rm ~/.zshrc
  ln -s $DOTFILES_DIR/.zshrc ~

  # vimrc
  [ -f ~/.vimrc ] && rm ~/.vimrc
  ln -s $DOTFILES_DIR/.vimrc ~

  # ruby-version
  [ -f ~/.ruby-version ] && rm ~/.ruby-version
  ln -s $DOTFILES_DIR/.ruby-version ~

  # gemrc
  [ -f ~/.gemrc ] && rm ~/.gemrc
  ln -s $DOTFILES_DIR/.gemrc ~

  # nvmrc
  [ -f ~/.nvmrc ] && rm ~/.nvmrc
  ln -s $DOTFILES_DIR/.nvmrc ~

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