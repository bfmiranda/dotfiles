#!/bin/bash

sudo apt update
sudo apt full-upgrade -y
sudo apt install -y git

sudo apt install gh -y

echo 'Login pelo Github Cli'
gh auth login

if [ ! -d ~/dotfiles ]; then
    # git clone https://github.com/starlone/dotfiles.git ~/dotfiles
    gh repo clone bfmiranda/dotfiles ~/dotfiles
fi

~/dotfiles/install.sh
