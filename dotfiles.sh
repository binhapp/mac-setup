export DOTFILES_DIR=~/.dotfiles

if [ ! -d "$DOTFILES_DIR" ]; then
  git clone -b dotfiles https://github.com/blcsntb/mac-setup "$DOTFILES_DIR"
fi

for f in $DOTFILES_DIR/.functions/*; do 
  source $f
done
