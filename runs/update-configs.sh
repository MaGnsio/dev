#!/usr/bin/env zsh

sudo cp ~/workspace/dev/configs/hypr/hyprland.conf ~/.config/hypr/
sudo cp ~/workspace/dev/configs/hypr/hyprlock.conf ~/.config/hypr/ && hyprctl reload

sudo cp ~/workspace/dev/configs/waybar/* ~/.config/waybar/

sudo cp ~/workspace/dev/configs/ghostty/config ~/.config/ghostty/ && echo -e "\033[0;32m[action]\033[0m reload ghostty config"

sudo cp ~/workspace/dev/configs/fontconfig/* ~/.config/fontconfig/ && fc-cache -f -v

sudo cp ~/workspace/dev/configs/etc/ly/config.ini /etc/ly/

sudo cp ~/workspace/dev/scripts/* /usr/local/bin/

sudo cp ~/workspace/dev/configs/.zshrc ~/.zshrc && source ~/.zshrc

sudo cp ~/workspace/dev/configs/.tmux.conf ~/.tmux.conf && tmux source -v ~/.tmux.conf
