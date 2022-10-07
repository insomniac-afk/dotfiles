#!/bin/bash

#Installing Basics
echo "Installing Pacman Packages"
sudo pacman -S zsh gddm i3-gaps kitty neofetch neovim polybar dunst rofi
echo "Installing AUR Packages"
sudo yay -S chezmoi zplug picom-ibhagwan-git autotiling-git plex-mpv-shim neovim-plug betterlockscreen 

#Cloning dotfiles with chezmoi
chezmoi init --apply https://github.com/insomniac-afk/dotfiles.git

