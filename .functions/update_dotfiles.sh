update_dotfiles() {
  DOTFILES_DIR=~/.dotfiles
  if [ -d "$DOTFILES_DIR" ]; then
    (cd "$DOTFILES_DIR"; git add . && git stash && git pull)
  fi
  install_dotfiles
}