#!/bin/bash

set -e

log() {
  echo $@
}

log-h1() {
  log ""
  log "# $@"
}

is-set() {
  type=$@
  log "## $type"
  if [ $type == 'set' ]; then
    true
  else
    false
  fi
}

set-type-path() {
  type=$1
  path=$2
  if is-set $type; then
    cp ~/$path ./
  else
    cp ./$path ~/
  fi
}

--vimrc() {
  log-h1 ".vmdrc"
  set-type-path $@ .vimrc
}

--gitignore_global() {
  log-h1 ".vmdrc"
  set-type-path $@ .gitignore_global
}

--vmdrc() {
  log-h1 ".vmdrc"
  set-type-path $@ .vmdrc
}

--vscode() {
  log-h1 "vscode"
  mkdir -p ./Library/Application\ Support/Code/User
  if is-set $@; then
    cp \
      ~/Library/Application\ Support/Code/User/settings.json \
      ./Library/Application\ Support/Code/User
    cp \
      ~/Library/Application\ Support/Code/User/keybindings.json \
      ./Library/Application\ Support/Code/User
  else
    cp \
      ./Library/Application\ Support/Code/User/settings.json \
      ~/Library/Application\ Support/Code/User/
    cp \
      ./Library/Application\ Support/Code/User/keybindings.json \
      ~/Library/Application\ Support/Code/User/
  fi
}

--all() {
  type=$@
  --vimrc $type
  --gitignore_global $type
  --vmdrc $type
  --vscode $type
}

$@