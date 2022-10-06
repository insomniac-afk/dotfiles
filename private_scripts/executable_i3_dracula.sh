#!/bin/bash
THEME="dracula"
#i3 stuffs
#Backup old config
cp $HOME/.config/i3/config $HOME/.config/i3/config.bak
echo "i3 Config backed up"
#Copy dracula config
cp $HOME/.config/i3/config.dracula $HOME/.config/i3/config
echo "$THEME for i3 imported."
#polybar stuffs
#backup old config
cp $HOME/.config/polybar/config $HOME/.config/polybar/config.bak
echo "Polybar Config backed up"
#Copy dracula Config
cp $HOME/.config/polybar/config.dracula $HOME/.config/polybar/config
echo "$THEME for polybar imported"
#rofi stuffs
#backup old config
cp $HOME/.config/rofi/config.rasi $HOME/.config/rofi/config.rasi.bak
echo "rofi Config backed up"
#copy dracula config
cp $HOME/.config/rofi/config.dracula $HOME/.config/rofi/config.rasi
echo "$THEME for rofi imported"
#enable gtk dracula theme
gsettings set org.gnome.desktop.interface gtk-theme "dracula"
gsettings set org.gnome.desktop.wm.preferences theme "dracula"
echo "$THEME set as gtk theme"
#kitty dracula theme
sed -i 's/.*.conf/include dracula.conf/g' "$HOME/.config/kitty/kitty.conf"
echo "$THEME replaced in kitty.conf"
#change nvim theme
sed -i 's/colorscheme .*/colorscheme dracula/g' "$HOME/.config/nvim/vim-plug/plugins.vim"
echo "#THEME replaced for nvim"
#change gtk to dracula
sed -i 's/gtk-theme-name=.*/gtk-theme-name=Dracula/g' "$HOME/.config/gtk-3.0/settings.ini"
echo "gtk theme switched to $THEME"
#restart i3
i3-msg restart
echo "i3 restarted and $THEME installed"
echo "Relog to update your gtk theme"
echo "Enjoy!"
