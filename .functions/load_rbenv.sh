load_rbenv() {
  if ! type rbenv >/dev/null 2>&1; then
    return
  fi
  eval "$(rbenv init -)"
}