#!/bin/bash

#Installing Basics
echo "Installing Pacman Packages"
sudo pacman -S zsh starship i3-gaps kitty neofetch neovim polybar dunst rofi
echo "Installing AUR Packages"
yay -S chezmoi zplug picom-ibhagwan-git autotiling plex-mpv-shim neovim-plug betterlockscreen 

#Changing shell to ZSH
chsh -s /bin/zsh

#Cloning dotfiles with chezmoi
chezmoi init --apply https://github.com/insomniac-afk/dotfiles.git
chmod +x $HOME/.config/i3/autostart.sh

