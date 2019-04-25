alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias xcode='open -a Xcode'
alias sourcetree='open -a SourceTree'

ZSH_THEME="robbyrussell"
export ZSH=~/.oh-my-zsh
export REACT_EDITOR=code
export PATH=$HOME/.homebrew/bin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/dotfiles.sh
load_zsh_plugins
load_powerline_shell
load_z
load_rbenv
load_nvm
load_java
load_android_sdk
