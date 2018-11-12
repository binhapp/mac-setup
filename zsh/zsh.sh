#!/bin/bash

$MAC_SETUP_DIR/install.sh zsh \
  --script-exist "[ -d $ZSH ]" \
  --script-install '
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' \
  --script-config "
    [ -f ~/.zshrc ] && rm ~/.zshrc
    ln -s $MAC_SETUP_DIR/zsh/zshrc ~/.zshrc
    ls -la ~/.zshrc" \
  --script-uninstall '
    [ ! "$CI" ] && \
      echo y | sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"' \
  $@
