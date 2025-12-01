#!/usr/bin/env zsh

sudo cp -r ~/workspace/dev/configs/hypr/* ~/.config/hypr/ && hyprctl reload

sudo cp -r ~/workspace/dev/configs/waybar/* ~/.config/waybar/

sudo cp -r ~/workspace/dev/configs/swaync/* ~/.config/swaync/ \
  && swaync-client -R && swaync-client -rs

sudo cp -r ~/workspace/dev/configs/rofi/* ~/.config/rofi/

sudo cp -r ~/workspace/dev/configs/rofimoji.rc ~/.config/rofimoji.rc

sudo cp -r ~/workspace/dev/configs/ghostty/config ~/.config/ghostty/ \
  && echo -e "\033[0;32m[action]\033[0m reload ghostty config"

sudo cp -r ~/workspace/dev/configs/fontconfig/* ~/.config/fontconfig/ \
  && fc-cache -f -v

sudo cp -r ~/workspace/dev/configs/etc/ly/config.ini /etc/ly/config.ini

sudo cp -r ~/workspace/dev/scripts/* /usr/local/bin/

sudo cp -r ~/workspace/dev/configs/.zshrc ~/.zshrc \
  && source ~/.zshrc

sudo cp -r ~/workspace/dev/configs/.tmux.conf ~/.tmux.conf \
  && tmux source -v ~/.tmux.conf
