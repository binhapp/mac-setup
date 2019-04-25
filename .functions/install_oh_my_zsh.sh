install_oh_my_zsh() {
  if [ -d ~/.oh-my-zsh ]; then
    return
  fi
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  sudo chsh -s /bin/zsh "$USER"
}