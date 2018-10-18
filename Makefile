vimrc-get:
	cp .vimrc ~
vimrc-set:
	cp ~/.vimrc .
gitignore-global-get:
	cp .gitignore_global ~
gitignore-global-set:
	cp ~/.gitignore_global .
vscode-get:
	cp vscode_keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
	cp vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
vscode-set:
	cp ~/Library/Application\ Support/Code/User/keybindings.json vscode_keybindings.json
	cp ~/Library/Application\ Support/Code/User/settings.json vscode_settings.json
vmd-get:
	cp .vmrc ~
vmd-set:
	cp ~/.vmdrc .
