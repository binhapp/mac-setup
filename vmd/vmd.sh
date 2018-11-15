~/mac-setup/install.sh vmd \
  --script-install "npm install -g vmd" \
  --script-config "
    rm ~/.vmdrc
    ln -s ~/mac-setup/vmd/vmdrc ~/.vmdrc
    ls -la ~/.vmdrc" \
  $@
