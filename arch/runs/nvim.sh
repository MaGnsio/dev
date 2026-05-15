#!/usr/bin/env bash

paru -S --noconfirm --needed neovim lua51 luarocks gcc cmake nodejs npm go
paru -S --noconfirm --needed tree-sitter tree-sitter-cli fd fzf ripgrep
git clone git@github.com:MaGnsio/nvim-config.git $HOME/.config/nvim
sudo luarocks install luacheck
