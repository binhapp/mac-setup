#!/bin/bash

$MAC_SETUP_DIR/install.sh rvm \
  --script-version "" \
  --script-install "
    \curl -sSL https://get.rvm.io | bash -s stable" \
  $@

$MAC_SETUP_DIR/install.sh ruby --script-install "rvm install ruby" $@

$MAC_SETUP_DIR/brew/brew.sh $@

$MAC_SETUP_DIR/install.sh pod --script-install "gem install cocoapods" $@

$MAC_SETUP_DIR/install.sh fastlane --script-install "gem install fastlane -NV" $@
