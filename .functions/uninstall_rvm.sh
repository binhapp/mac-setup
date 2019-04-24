uninstall_rvm() {
  echo yes | rvm implode
  rm -rf ~/.rvm
}