#!/bin/bash

exist() {
  echo ---
  # command -v "$1" >/dev/null 2>&1
  if hash $1 2>/dev/null; then
    which $1
    true
  else
    echo $1 not installed
    false
  fi
}

if exist xcodebuild; then
  xcodebuild -version
else
  exit 1
fi

if exist zsh; then
  zsh --version
else
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  zsh --version
fi

if exist rvm; then
  rvm --version
  ruby --version
else
  \curl -sSL https://get.rvm.io | bash -s stable
  source ~/.zshrc
  rvm --version
  ruby --version
fi

if exist brew; then
  brew --version
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew --version
fi
