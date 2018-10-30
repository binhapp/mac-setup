#!/bin/bash

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

cd ~/.oh-my-zsh/custom/themes/powerlevel9k

curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors > "Solarized Dark - Patched.itermcolors"
open "Solarized Dark - Patched.itermcolors"

curl https://raw.githubusercontent.com/powerline/fonts/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf > "Source Code Pro for Powerline.otf"
open "Source Code Pro for Powerline.otf"

cd -
