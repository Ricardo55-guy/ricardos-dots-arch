#!/bin/sh

sudo pacman -Syu

cd ~/
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/ricardos-dots-arch

yay
yay -Syu sway swaylock swaybg wofi autotiling firefox nautilus git acpi foot fish ufetch-git ttf-dejavu-nerd swayidle wmenu grim

sudo pacman -S xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr

mkdir -p ~/.config/sway
cp -r config ~/.config/sway/
cp -r scripts ~/.config/sway/
chmod +x ~/.config/sway/scripts/*
mkdir -p ~/Pictures/Wallpapers/
cp arch.jpg ~/Pictures/Wallpapers/
cp -r fish ~/.config/
cp -r foot ~/.config/

echo "==========================================================="
echo "                  Installation complete!                   "
echo "  You can launch your desktop environment by typing: sway  "
echo "==========================================================="
echo "You can also use the extra wallpapers by copying them into the newly created ~/Pictures/Wallpapers."
