ZSH_THEME="robbyrussell"

export ZSH=~/.oh-my-zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=$HOME/.homebrew/bin:$PATH

export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH
export REACT_EDITOR=code

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=$JAVA_HOME/bin:$PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

alias mac='~/mac-setup/mac-setup'
alias mac-update='mac all && source ~/.zshrc'
alias emulator=$ANDROID_HOME/tools/emulator
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias xcode='open -a Xcode'
alias stree='open -a SourceTree'
alias restree='killall Sourcetree && stree'
alias gff='git flow feature'
alias vscode='code'
alias revscode='pgrep Electron | xargs kill && code'

function powerline_precmd() {
  PS1="$(powerline-shell --shell zsh $?)"
}
function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}
install_powerline_precmd

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/dotfiles.sh
source ~/.homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(~/.homebrew/share/zsh-completions $fpath)

. ~/.zrupa/z.sh
