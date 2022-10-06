#!/bin/bash
for pkgName in $(cat packages.txt)
do
	pacman -S --force --noconfirm $pkgName
done
echo "Installed all packages in packages.txt"

