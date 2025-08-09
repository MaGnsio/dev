#!/usr/bin/env bash

sudo paru -S --noconfirm --needed zsh
hash -r
sudo chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "zsh & oh-my-zsh. Reboot in order to make zsh your default shell..."
