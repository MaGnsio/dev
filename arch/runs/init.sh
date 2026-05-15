#!/usr/bin/env bash

sudo pacman -Syu --noconfirm --needed

workspace="$HOME/workspace"
if [ ! -d "$workspace" ]; then
  mkdir "$workspace"
else
  echo "[mg] $workspace already exists"
fi
cd "$workspace"

sudo pacman -S --noconfirm --needed git base-devel

if ! command -v paru $> /dev/null; then
  git clone https://aur.archlinux.org/paru.git
  cd paru && makepkg -si && cd .. && sudo rm -r paru
else
  echo "[mg] Paru is installed"
fi

paru -S --noconfirm --needed man-db
paru -S --noconfirm --needed nautilus
paru -S --noconfirm --needed nwg-look tokyonight-gtk-theme-git bibata-cursor-theme-bin
paru -S --noconfirm --needed hyprpaper hyprshot waybar swaync hyprlock
# paru -S --noconfirm --needed gtk-engine-murrine

paru -Rns dolphin kitty wofi
