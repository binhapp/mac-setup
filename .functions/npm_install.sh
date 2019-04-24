npm_install() {
  nvm install $(cat ~/.nvmrc)
  nvm alias default $(cat ~/.nvmrc)
  npm install -g yarn
  npm install -g vmd
}