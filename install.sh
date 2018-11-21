#!/bin/bash

app=$1
exist="command -v $app >/dev/null 2>&1"
which="which $app"
version="$app --version"
install=
config=
uninstall=

echo ""
echo "# $app"

exist() {
  echo "$exist" | bash
}

install() {
  if [ "$install" != "" ]; then
    if ! exist; then
      echo "## install"
      echo "$install" | bash
    fi
  fi
  if [ "$version" != "" ]; then
    echo "## version"
    $version
  fi
  if [ "$which" != "" ]; then
    echo "## which"
    $which
  fi
}

config() {
  if [ "$config" != "" ]; then
    echo "## config"
    echo "$config" | bash
  fi
}

uninstall() {
  if [ "$uninstall" != "" ]; then
    if exist; then
      echo "## uninstall"
      echo "$uninstall" | bash
    fi
  fi
}

help() {
  echo "usage:"
}

while [ "$1" != "" ]; do
  case $1 in
    --script-exist ) shift
      exist=$1;;
    --script-which ) shift
      which=$1;;
    --script-version ) shift
      version=$1;;
    --script-install ) shift
      install=$1;;
    --install )
      install;;
    --script-config ) shift
      config=$1;;
    --config ) shift
      config;;
    --script-uninstall ) shift
      uninstall=$1;;
    --uninstall )
      uninstall;;
    --help )
      help
      exit
  esac
  shift
done
