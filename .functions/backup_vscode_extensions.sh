backup_vscode_extensions() {
  code --list-extensions > $DOTFILES_DIR/.config/vscode_extensions.txt
}