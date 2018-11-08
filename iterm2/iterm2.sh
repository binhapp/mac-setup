#!/bin/bash

plistfile=~/Library/Preferences/com.googlecode.iterm2.plist
themesdir=~/.oh-my-zsh/custom/themes
powerlevel9kdir=$themesdir/powerlevel9k
color="Solarized Dark - Patched.itermcolors"
font="Source Code Pro for Powerline.otf"

doc="
usage:
"
doc_append() {
  doc+="$@"
}
doc_append_separator() {
  doc_append "
$@"
}

doc_append "
--help"
--help() {
  echo "$doc"
}

doc_append "
--clean"
--clean() {
  rm -rf "$themesdir/$color"
  rm -rf ~/Library/Application\ Support/iTerm2
  [ -f "$plistfile" ] && rm "$plistfile"
}

doc_append_separator "
--custom-theme"
--custom-theme() {
  [ ! -d $powerlevel9kdir ] && \
    git clone https://github.com/bhilburn/powerlevel9k.git $powerlevel9kdir
}

doc_append "
--custom-color"
--custom-color() {
  cd $themesdir
  [ ! -f "$color" ] && \
    curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors > "$color"
  cd --
}

doc_append "
--custom-font"
--custom-font() {
  cd ~/Library/Fonts
  [ ! -f "$font" ] && \
    curl https://raw.githubusercontent.com/powerline/fonts/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf > "$font"
  cd --
}

doc_append "
--custom-all"
--custom-all() {
  --custom-theme
  --custom-color
  --custom-font
}

if [ "$1" == "" ]; then
  echo "[--custom-all]"
  --custom-all
else
  echo "[$1]"
  $1
fi
