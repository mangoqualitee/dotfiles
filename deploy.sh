#!/bin/bash

# install essential
sudo pacman -S curl wget git sudo vim build-essential cmake helix 

# install window-manager utils
sudo pacman -S sway swaylock i3status
# AUR:: install grimshot for screenshots
sudo pacman -S pipewire
# xdg-mediasession

# install firefox
sudo pacman -S firefox-developer-edition

# install language toolchains
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install fish
sudo pacman -S fish

# install tools
sudo pacman -S alacritty zellij
sudo pacman -S trash-cli

# install fonts
sudo pacman -S ttc-iosevka

# install key remapping daemon
sudo pacman -S keyd

# install dotfiles
sudo pacman -S stow
git clone https://github.com/vishalpaudel/dotfiles.git && cd dotfiles
stow .

