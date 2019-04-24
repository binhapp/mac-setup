clone_z() {
  if [ -d ~/.zrupa ]; then
    return
  fi
  git clone https://github.com/rupa/z ~/.zrupa
}