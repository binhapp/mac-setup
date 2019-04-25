load_android_sdk() {
  export ANDROID_HOME=$HOME/Library/Android/sdk
  if [ ! -d "$ANDROID_HOME" ]; then
    return
  fi
  export PATH=$ANDROID_HOME/tools:$PATH
  export PATH=$ANDROID_HOME/tools/bin:$PATH
  export PATH=$ANDROID_HOME/platform-tools:$PATH
  alias emulator=$ANDROID_HOME/tools/emulator
}
load_android_sdk