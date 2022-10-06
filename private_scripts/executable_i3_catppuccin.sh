#!/bin/bash
THEME="catppuccin"
#i3 stuffs
#Backup old config
cp $HOME/.config/i3/config $HOME/.config/i3/config.bak
echo "i3 Config backed up"
#Copy catppuccin config
cp $HOME/.config/i3/config.catppuccin $HOME/.config/i3/config
echo "$THEME for i3 imported."
#polybar stuffs
#backup old config
cp $HOME/.config/polybar/config $HOME/.config/polybar/config.bak
echo "Polybar Config backed up"
#Copy catppuccin Config
cp $HOME/.config/polybar/config.catppuccin $HOME/.config/polybar/config
echo "$THEME for polybar imported"
#rofi stuffs
#backup old config
cp $HOME/.config/rofi/config.rasi $HOME/.config/rofi/config.rasi.bak
echo "rofi Config backed up"
#copy catppuccin config
cp $HOME/.config/rofi/config.catppuccin $HOME/.config/rofi/config.rasi
echo "$THEME for rofi imported"
#enable gtk catppuccin theme
gsettings set org.gnome.desktop.interface gtk-theme "catppuccin"
gsettings set org.gnome.desktop.wm.preferences theme "catppuccin"
echo "$THEME set as gtk theme"
#kitty catppuccin theme
sed -i 's/.*.conf/include cattpuccin.conf/g' "$HOME/.config/kitty/kitty.conf"
echo "$THEME replaced in kitty.conf"
sed -i 's/colorscheme .*/colorscheme cattpuccin/g' "$HOME/.config/nvim/vim-plug/plugins.vim"
echo "$THEME imported for nvim"
#change gtk to catppuccin
sed -i 's/gtk-theme-name=.*/gtk-theme-name=Catppuccin/g' "$HOME/.config/gtk-3.0/settings.ini"
echo "gtk theme switched to $THEME"
#restart i3
i3-msg restart
echo "i3 restarted and $THEME installed"
echo "Relog to update your gtk theme"
echo "Enjoy!"
