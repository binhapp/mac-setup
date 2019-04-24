uninstall_homebrew() {
  echo y | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
  for d in /usr/local/*; do sudo rm -rf $d; done
}