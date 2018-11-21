
~/mac-setup/install.sh nvm \
  --script-exist "[ -d ~/.nvm ]" \
  --script-which "" \
  --script-version "" \
  --script-install '
    [ ! "$CI" ] && \
      curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash' \
  --script-uninstall '
    [ ! "$CI" ] && \
      [ -d ~/.nvm ] && rm -rf ~/.nvm' \
  $@

~/mac-setup/install.sh node --script-install "nvm install 9.11.2" $@

~/mac-setup/install.sh yarn --script-install "npm install -g yarn" $@
