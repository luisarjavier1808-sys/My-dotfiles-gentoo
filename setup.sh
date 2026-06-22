#!/bin/bash

echo "=== Starting Gentoo Dotfiles Installation ==="
echo "This can take a lot of time"

# 0. Ensure the repo is downloaded if running via curl
if [ ! -d "$HOME/dotfiles" ]; then
    echo"Downloading repo"
    git clone https://github.com/luisarjavier2102-sys/My-dotfiles-gentoo.git ~/dotfiles
fi

# 1. Install flaggie first to handle configuration easily
echo "[1/4] Installing flaggie for USE flag management..."
sudo emerge --ask=n app-portage/flaggie

# 2. Automatically configure the required USE flags for your rice
echo "[2/4] Setting up package USE flags..."
# Make sure Polybar supports i3 tracking and internet stats
sudo flaggie x11-misc/polybar +i3wm +network +ipc +alsa +curl

# 3. Install all system dependencies with the correct flags applied
echo "[3/4] Installing system dependencies (i3, polybar, picom, rofi, kitty, stow)..."
sudo emerge --ask=n x11-wm/i3 x11-misc/polybar x11-misc/picom x11-misc/rofi x11-terms/kitty app-admin/stow

# 4. Deploy configurations via Stow
echo "[4/4] Creating symlinks with GNU Stow..."
mkdir -p ~/.config
cd ~/dotfiles
stow --adopt i3 picom polybar rofi

echo ""
echo "=== Installation complete! Everything is linked and configured successfully ==="

