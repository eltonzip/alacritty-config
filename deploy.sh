#!/bin/env bash

distro=$(grep -o "Debian\|Arch" /etc/os-release | uniq)

if [[ $distro == "Debian" ]]; then
	sudo apt install -y alacritty fonts-terminus
elif [[ $distro == "Arch" ]]; then
	sudo pacman -S --noconfirm --needed alacritty terminus-font
fi

ln -s $(pwd)/alacritty $HOME/.config/alacritty
