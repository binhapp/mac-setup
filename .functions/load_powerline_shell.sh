load_powerline_shell() {
  if ! type powerline-shell >/dev/null 2>&1; then
    return
  fi
  function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
  }
  function install_powerline_precmd() {
    for s in "${precmd_functions[@]}"; do
      if [ "$s" = "powerline_precmd" ]; then
        return
      fi
    done
    precmd_functions+=(powerline_precmd)
  }
  install_powerline_precmd
}