#!/bin/bash

~/mac-setup/install.sh pip \
  --script-install "
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py --user
    rm get-pip.py" \
  $@

~/mac-setup/install.sh powerline-shell \
  --script-version "" \
  --script-install "
    pip install powerline-shell --user" \
  --script-config '
    mkdir -p ~/.config/powerline-shell
    rm ~/.config/powerline-shell/config.json
    ln -s ~/mac-setup/powerline/config.json ~/.config/powerline-shell/config.json
    ls -la ~/.config/powerline-shell/config.json' \
  $@
