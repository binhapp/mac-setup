syn_vscode_extensions() {
  cat $DOTFILES_DIR/.config/vscode_extensions.txt | xargs -L1 code --install-extension
}