#!/bin/bash

#Installing Basics
echo "Installing Pacman Packages"
sudo pacman -S zsh i3-gaps kitty neofetch neovim polybar dunst rofi
echo "Installing AUR Packages"
sudo yay -S chezmoit zplug picom-ibhagwan-git autotiling-git plex-mpv-shim neovim-plug betterlockscreen 

#Cloning dotfiles with chezmoi
chezmoit init --apply https://github.com/insomniac-afk/dotfiles.git

