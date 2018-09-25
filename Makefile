vimrc-get:
	cp ~/.vimrc .vimrc
vimrc-set:
	cp .vimrc ~/.vimrc
vscode-get:
	cp vscode_keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
	cp vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
vscode-set:
	cp ~/Library/Application\ Support/Code/User/keybindings.json vscode_keybindings.json
	cp ~/Library/Application\ Support/Code/User/settings.json vscode_settings.json
vmd-get:
	cp ~/.vmdrc .vmdrc
vmd-set:
	cp .vmrc ~/.vmdrc
