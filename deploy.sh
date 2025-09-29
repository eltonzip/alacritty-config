#!/bin/env bash

sudo apt install -y alacritty fonts-liberation
ln -s $(pwd)/alacritty.toml $HOME/.alacritty.toml
