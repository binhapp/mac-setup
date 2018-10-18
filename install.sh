#!/bin/bash

set -e

force-install() {
  [ $FORCE_INSTALL ]
}

installed() {
  if force-install; then
    false
  else
    command -v $1 >/dev/null 2>&1
    # hash $1 2>/dev/null
  fi
}

exist() {
  echo
  echo "## $1"
  if installed; then
    which $1
    true
  else
    echo $1 not installed
    false
  fi
}

source-zshrc() {
  if !force-install; then
    source ~/.zshrc
  fi
}

--xcodebuild() {
  if exist xcodebuild; then
    xcodebuild -version
  else
    if !force-install; then
      exit
    fi
  fi
}

--zsh() {
  if exist zsh; then
    zsh --version
  else
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    zsh --version
  fi
}

--rvm() {
  if exist rvm; then
    rvm --version
  else
    \curl -sSL https://get.rvm.io | bash -s stable
    source-zshrc
    rvm --version
  fi
}

--ruby() {
  if exist ruby; then
    ruby --version
  else
    rvm install ruby
    ruby --version
  fi
}

--brew() {
  if exist brew; then
    brew --version
  else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew --version
  fi
}

--nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  if exist nvm; then
    nvm --version
  else
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
    source-zshrc
    nvm --version
  fi
}

--pod() {
  if exist pod; then
    pod --version
  else
    gem install cocoapods
    pod --version
  fi
}

--xcodebuild
--zsh
--rvm
--ruby
--brew
--nvm
--pod
