#!/usr/bin/env bash

paru -S --noconfirm --needed neovim lua51 luarocks gcc cmake nodejs npm
paru -S --noconfirm --needed tree-sitter tree-sitter-cli fd fzf
git clone https://github.com/MaGnsio/nvim-config.git $HOME/.config/nvim
sudo luarocks install luacheck
