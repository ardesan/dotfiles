##!/bin/bash
set -e

ACTION=$1

show_usage() {
    BASENAME=$(basename $0)

    echo "Missing / wrong parameter"
    echo ""
    echo "Usage:"
    echo "  $BASENAME --build     start initital setup"
    echo "  $BASENAME --update    update the config files"
    echo "  $BASENAME --wsl       install or update wsl specific settings"
    echo "  $BASENAME --vscode    install or update vscode plugins"
}

build() {
    sudo apt-get install zsh
    git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
    mkdir -p ~/.ssh
    sudo apt-get install keychain
    sudo apt install bat
    sudo apt install python3-pip
    sudo ln -s /usr/bin/batcat /usr/local/bin/bat
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    cp .bashrc ~/.bashrc
    cp .zshrc ~/.zshrc
    mkdir -p ~/zshenv
    ~/.fzf/install
    echo "[OK] installation complete"
}

update() {
    cp .bashrc ~/.bashrc
    cp .zshrc ~/.zshrc
    echo "[OK] config files updated"
}

wsl() {
    sudo cp ./etc/wsl.conf /etc/wsl.conf
    echo "[OK] config files updated"
}

vscode() {
    code --install-extension eamodio.gitlens
    code --install-extension ms-azuretools.vscode-docker
    code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
    code --install-extension hashicorp.terraform
    code --install-extension esbenp.prettier-vscode
    code --install-extension 2gua.rainbow-brackets
    code --install-extension hashicorp.terraform
    code --install-extension foxundermoon.shell-format
    code --install-extension redhat.vscode-yaml
    code --install-extension ms-python.vscode-pylance
    code --install-extension golang.go --force
}

case "$ACTION" in
--build)
    build
    ;;
--update)
    update
    ;;
--wsl)
    wsl
    ;;
--vscode)
    vscode
    ;;
*)
    show_usage
    exit 1
    ;;
esac

exit 0
