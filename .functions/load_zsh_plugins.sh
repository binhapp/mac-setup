function load_zsh_plugins() {
  if ! type brew >/dev/null 2>&1; then
    return
  fi
  brew_dir=$(brew --prefix)
  source $brew_dir/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source $brew_dir/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  fpath=($brew_dir/share/zsh-completions $fpath)
}
load_zsh_plugins