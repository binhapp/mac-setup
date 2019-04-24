npm_install() {
  nvm install $(cat ~/.nvmrc)
  npm install -g yarn
  npm install -g vmd
}