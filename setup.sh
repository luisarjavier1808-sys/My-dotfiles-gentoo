#!/bin/bash
echo "Setting up your Core Gentoo Rice..."

# Ensure GNU Stow is installed
if ! command -v stow &> /dev/null; then
    echo "Installing GNU Stow..."
    sudo emerge app-admin/stow
fi

# Make sure the base target directory exists
mkdir -p ~/.config

# Move into the repository and link the core modules
cd ~/dotfiles
stow i3 picom polybar rofi

echo "Done! Core environment is linked seamlessly."
