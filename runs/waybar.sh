paru -S --noconfirm --needed waybar
paru -S --noconfirm --needed blueman
paru -S --noconfirm --needed pavucontorl
paru -S --noconfirm --needed swaync

sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
