source $MAC_SETUP_DIR/nvm/.nvmrc

exist() {
	echo "
## $1"
	if command -v $1 >/dev/null 2>&1; then
		which $1
		true
	else
		echo "$1 not installed"
		false
	fi
}

install() {
  install="$2"
  version="$3"
  if exist "$1"; then
    $version
  else
    $install
    $version
  fi
}

install \
  "nvm" \
  "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash" \
  "nvm --version" \

install \
  "node" \
  "nvm install 9.11.2" \
  "node --version" \

install \
  "yarn" \
  "npm install -g yarn" \
  "yarn --version" \

exit
  jest \
  appium \
  appium-doctor \
