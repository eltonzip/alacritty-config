#!/bin/env bash

distro=$(grep -o "Debian\|Arch" /etc/os-release | uniq)

if [[ $distro == "Debian" ]]; then
	sudo apt install -y alacritty
elif [[ $distro == "Arch" ]]; then
	sudo pacman -S --noconfirm --needed alacritty
fi

ln -s $(pwd)/alacritty $HOME/.config/alacritty
