paru -S --noconfirm --needed rofi ttf-jetbrains-mono-nerd papirus-icon-theme

git clone https://github.com/Murzchnvok/rofi-collection

cd rofi-collection

cp -r tokyonight/tokyonight.rasi $HOME/.local/share/rofi/themes/

cd .. && sudo rm -r rofi-collection

CONFIG_FILE="$HOME/.local/share/rofi/themes/tokyonight.rasi"
FONT_LINE='  font: "JetBrainsMono Nerd Font Bold 14";'
sed -i "/font:/c\\$FONT_LINE" "$CONFIG_FILE"

echo "rofi setup done..."
