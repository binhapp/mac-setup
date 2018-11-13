#!/bin/bash

~/mac-setup/install.sh gitignore \
  --script-version "" \
  --script-config "
    [ -f ~/.gitignore_global ] && rm ~/.gitignore_global
    ln -s ~/mac-setup/gitignore/gitignorerc ~/.gitignore_global
    ls -la ~/.gitignore_global" \
  $@
