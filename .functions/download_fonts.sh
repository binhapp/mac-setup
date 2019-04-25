download_fonts() {
  FONT_PATH="$HOME/Library/Fonts/Meslo LG M Regular for Powerline.ttf"
  if [ -f "$FONT_PATH" ]; then
    return
  fi  
  curl https://raw.githubusercontent.com/powerline/fonts/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf --output "$FONT_PATH"
}