install_homebrew() {
  if type brew >/dev/null 2>&1; then
    return
  fi
  mkdir ~/.homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/.homebrew
}