link_file() {
  file="$1"
  srcfile="$DOTFILES_DIR/$file"
  desfile="$HOME/$file"
  mkdir -p "$(dirname "$desfile")"
  ln -f -s "$srcfile" "$desfile"
}