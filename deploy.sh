#!/bin/env bash

distro=$(grep -o 'Debian\|Arch' /etc/os-release | uniq)
if [[ $distro == 'Arch' ]]; then
        sudo pacman -S --noconfirm --needed alacritty terminus-font
elif [[ $distro == 'Debian' ]]; then
        sudo apt install alacritty fonts-terminus-otb
else
        echo 'this script is not suitable for your distro'
fi

ln -s $(pwd)/alacritty/ $HOME/.config/alacritty
