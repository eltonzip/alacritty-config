#!/bin/env bash

sudo apt install -y alacritty fonts-terminus-otb
ln -s $(pwd)/alacritty.toml $HOME/.alacritty.toml
