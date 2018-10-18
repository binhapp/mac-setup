#!/bin/bash

set -e

force-install() {
	[ $FORCE_INSTALL ]
}

exist() {
	echo
	echo "## $1"
	if force-install; then
		echo "force install $1"
		false
	elif command -v $1 >/dev/null 2>&1; then
		which $1
		true
	else
		echo "$1 not installed"
		false
	fi
}

source-zshrc() {
	if ! force-install; then
		source ~/.zshrc
	fi
}

xcodebuild -version

--zsh() {
	if exist zsh; then
		zsh --version
	elif [ ! $CI ]; then
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
	elif [ ! $CI ]; then
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

--travis() {
	if exist travis; then
		travis version
	else
		gem install travis --no-rdoc --no-ri
		source-zshrc
		travis version
	fi
}

--zsh
--rvm
--ruby
--brew
--nvm
--pod
--travis
