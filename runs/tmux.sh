#!/usr/bin/env bash

paru -S --noconfirm --needed tmux

git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm

echo "tmux & tpm installed. press {prefix + I} to install plugins..."
