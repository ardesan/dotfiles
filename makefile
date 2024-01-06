build:
	sudo apt-get install zsh
	git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
	mkdir -p ~/.ssh
	sudo cp etc/wsl.conf /etc/wsl.conf
	sudo apt-get install keychain
	sudo apt install bat
	sudo ln -s /usr/bin/batcat /usr/local/bin/bat
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	cp .bashrc ~/.bashrc
	cp .zshrc ~/.zshrc
	~/.fzf/install

vscode:
	code --install-extension eamodio.gitlens --force
	code --install-extension esbenp.prettier-vscode --force
	code --install-extension 2gua.rainbow-brackets --force
	code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools --force
	code --install-extension ms-python.python --force
	code --install-extension donjayamanne.python-environment-manager
	code --install-extension hashicorp.terraform --force
	code --install-extension Oracle.mysql-shell-for-vs-code --force

update:
	cp .bashrc ~/.bashrc
	cp .zshrc ~/.zshrc
	sudo cp etc/wsl.conf /etc/wsl.conf
