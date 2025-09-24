#!/bin/env bash

distro=$(grep -o 'Arch\|Debian' /etc/os-release | uniq)

if [[ $distro == 'Arch' ]]; then
	sudo pacman -S --needed --noconfirm alacritty ttf-liberation
elif [[ $distro == 'Debian' ]]; then
	sudo apt install -y alacritty fonts-liberaion
fi

ln -s $(pwd)/alacritty.toml $HOME/.alacritty.toml
