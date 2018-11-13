
~/mac-setup/install.sh nvm \
  --script-exist "[ -d ~/.nvm ]" \
  --script-which "" \
  --script-version "" \
  --script-install "
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash" \
  $@

~/mac-setup/install.sh node --script-install "nvm install 9.11.2" $@

~/mac-setup/install.sh yarn --script-install "npm install -g yarn" $@

~/mac-setup/install.sh jest --script-install "npm install -g jest" $@

~/mac-setup/install.sh appium --script-install "npm install -g appium" $@

~/mac-setup/install.sh appium-doctor --script-install "npm install -g appium-doctor" $@

~/mac-setup/install.sh vmd \
  --script-install "npm install -g vmd" \
  --script-config "
    rm ~/.vmdrc
    ln -s ~/mac-setup/vmd/vmdrc ~/.vmdrc
    ls -la ~/.vmdrc" \
  $@
