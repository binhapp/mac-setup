#!/bin/bash

echo "# Install"
./install.sh
[ "$CI" ] && curl https://raw.githubusercontent.com/blcsntb/mac-setup/master/install.sh | bash

echo "# Config"
./config.sh
[ "$CI" ] && curl https://raw.githubusercontent.com/blcsntb/mac-setup/master/config.sh | bash
