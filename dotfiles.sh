
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
