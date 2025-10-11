#!/usr/bin/env bash

sudo cp ~/workspace/dev/configs/hypr/hyprland.conf ~/.config/hypr/ && hyprctl reload

sudo cp ~/workspace/dev/configs/ghostty/config ~/.config/ghostty/ && echo -e "\033[0;32m[action]\033[0m reload ghostty config"

sudo cp ~/workspace/dev/scripts/* /usr/local/bin/
