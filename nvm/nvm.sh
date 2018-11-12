
$MAC_SETUP_DIR/install.sh nvm \
  --script-exist "[ -d ~/.nvm ]" \
  --script-which "" \
  --script-version "" \
  --script-install "
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash" \
  $@

$MAC_SETUP_DIR/install.sh node --script-install "nvm install 9.11.2" $@

$MAC_SETUP_DIR/install.sh yarn --script-install "npm install -g yarn" $@

$MAC_SETUP_DIR/install.sh jest --script-install "npm install -g jest" $@

$MAC_SETUP_DIR/install.sh appium --script-install "npm install -g appium" $@

$MAC_SETUP_DIR/install.sh appium-doctor --script-install "npm install -g appium-doctor" $@

$MAC_SETUP_DIR/install.sh vmd \
  --script-install "npm install -g vmd" \
  --script-config "
    rm ~/.vmdrc
    ln -s $MAC_SETUP_DIR/vmd/vmdrc ~/.vmdrc
    ls -la ~/.vmdrc" \
  $@
