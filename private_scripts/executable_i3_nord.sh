#!/bin/bash
THEME="nord"
#i3 stuffs
#Backup old config
cp $HOME/.config/i3/config $HOME/.config/i3/config.bak
echo "i3 Config backed up"
#Copy Nord config
cp $HOME/.config/i3/config.nord $HOME/.config/i3/config
echo "$THEME for i3 imported."
#polybar stuffs
#backup old config
cp $HOME/.config/polybar/config $HOME/.config/polybar/config.bak
echo "Polybar Config backed up"
#Copy Nord Config
cp $HOME/.config/polybar/config.nord $HOME/.config/polybar/config
echo "$THEME for polybar imported"
#rofi stuffs
#backup old config
cp $HOME/.config/rofi/config.rasi $HOME/.config/rofi/config.rasi.bak
echo "rofi Config backed up"
#copy nord config
cp $HOME/.config/rofi/config.nord $HOME/.config/rofi/config.rasi
echo "$THEME for rofi imported"
#enable gtk nord theme
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
echo "$THEME set as gtk theme"
#kitty nord theme
sed -i 's/.*.conf/include nord.conf/g' "$HOME/.config/kitty/kitty.conf"
echo "$THEME replaced in kitty.conf"
#change nvim theme to $THEME
sed -i 's/colorscheme .*/colorscheme nord/g' "$HOME/.config/nvim/vim-plug/plugins.vim"
echo "$THEME for nvim imported"
#change gtk to nord
sed -i 's/gtk-theme-name=.*/gtk-theme-name=Nordic/g' "$HOME/.config/gtk-3.0/settings.ini"
echo "gtk theme switched to $THEME"
#restart i3
i3-msg restart
echo "i3 restarted and $THEME installed"
echo "Relog to update your gtk theme"
echo "Enjoy!"