#!/bin/bash

echo "=== Starting Gentoo Dotfiles Installation ==="
echo ""

# 1. Install all system dependencies automatically
echo "[1/3] Installing system dependencies (i3, polybar, picom, rofi, kitty, stow)..."
sudo emerge --ask=n x11-wm/i3 x11-misc/polybar x11-misc/picom x11-misc/rofi x11-terms/kitty app-admin/stow

# 2. Ensure base target directory exists
echo "[2/3] Preparing configuration directories..."
mkdir -p ~/.config

# 3. Deploy configurations via Stow
echo "[3/3] Creating symlinks with GNU Stow..."
cd ~/dotfiles
stow i3 picom polybar rofi

echo ""
echo "=== Installation complete! Everything is linked successfully ==="
