install_nvm() {
  if type nvm >/dev/null 2>&1; then
    return
  fi
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
}