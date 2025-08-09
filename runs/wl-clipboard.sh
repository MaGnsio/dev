paru -S meson

# Clone:
git clone https://github.com/bugaevc/wl-clipboard.git
cd wl-clipboard

# Build:
meson setup build
cd build
ninja

# Install
sudo meson install

# Clean
cd ../.. && sudo rm -r wl-clipboard
