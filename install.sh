#!/bin/bash

set -e

exist() {
	echo
	echo "## $1"
	if command -v $1 >/dev/null 2>&1; then
		which $1
		true
	else
		echo "$1 not installed"
		false
	fi
}

# xcodebuild
xcodebuild -version

# zsh
if exist zsh; then
  zsh --version
elif [ ! $CI ]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  zsh --version
fi

# rvm
if exist rvm; then
  rvm --version
else
  \curl -sSL https://get.rvm.io | bash -s stable
  source ~/.zshrc
  rvm --version
fi

# ruby
if exist ruby; then
  ruby --version
else
  rvm install ruby
  ruby --version
fi

# brew
if exist brew; then
  brew --version
elif [ ! $CI ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew --version
fi

# pod
if exist pod; then
  pod --version
else
  gem install cocoapods
  pod --version
fi

# fastlane
if exist fastlane; then
  fastlane --version
else
  gem install fastlane -NV
  fastlane --version
fi

$MAC_SETUP_DIR/python/python.sh
$MAC_SETUP_DIR/powerline/powerline.sh --install
