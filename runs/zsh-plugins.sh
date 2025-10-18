#!/usr/bin/env zsh

git clone git@github.com:zsh-users/zsh-autosuggestions.git ${ZSH-CUSTOM}/plugins/zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH-CUSTOM}/plugins/zsh-syntax-highlighting

source $HOME/.zshrc
