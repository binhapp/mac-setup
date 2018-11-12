#!/bin/bash

$MAC_SETUP_DIR/install.sh zsh \
  --script-exist "[ -d ~/.oh-my-zsh ]" \
  --script-install '
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' \
  --script-config "
    [ -f ~/.zshrc ] && rm ~/.zshrc
    ln -s $MAC_SETUP_DIR/zsh/zshrc ~/.zshrc
    ls -la ~/.zshrc
    source ~/.oh-my-zsh/oh-my-zsh.sh" \
  --script-uninstall "
    rm -rf ~/.oh-my-zsh
    [ -f ~/.zshrc ] && rm ~/.zshrc" \
  $@
