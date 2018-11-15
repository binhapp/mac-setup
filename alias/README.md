## alias
```
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
alias xcode='open -a Xcode'
alias stree='open -a SourceTree'
alias stree!='killall Sourcetree && stree'
alias code!='kill -9 $(pgrep Electron) && code'
alias mac-setup='~/mac-setup/mac-setup.sh'
```
