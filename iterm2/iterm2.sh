#!/bin/bash

--download-font() {
  cd ~/Library/Fonts
  [ ! -f "Meslo LG M Regular for Powerline.ttf" ] && \
    curl https://raw.githubusercontent.com/powerline/fonts/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf > "Meslo LG M Regular for Powerline.ttf"
  cd --
}

--install() {
  --download-font
}

--config() {
  --install
  cp $MAC_SETUP_DIR/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
}

--uninstall() {
  rm -rf ~/Library/Application\ Support/iTerm2
}

$@
