#!/bin/bash

~/mac-setup/install.sh vscode \
  --script-version "" \
  --script-config "
    if [ ! -d ~/Library/Application\ Support/Code/User ]; then
      exit
    fi
    rm ~/Library/Application\ Support/Code/User/settings.json 
    ln -s ~/mac-setup/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    rm ~/Library/Application\ Support/Code/User/keybindings.json
    ln -s ~/mac-setup/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
    ls -la ~/Library/Application\ Support/Code/User/*.json" \
  $@
