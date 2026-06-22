# Gentoo Dotfiles

My personal modular desktop environment built on Gentoo Linux.

## Dependencies

Before running the installation script, make sure these core packages are installed on your system:

* x11-wm/i3 - The tiling window manager
* x11-misc/polybar - The status bar
* x11-misc/picom - The compositor for transparency and effects
* x11-misc/rofi - The application launcher menu
* app-admin/stow - The symlink manager used for setup
* x11-terms/kitty - The terminal emulator
* dev-vcs/git - Version control to pull the repository

You can install all of them manually using:
sudo emerge --ask x11-wm/i3 x11-misc/polybar x11-misc/picom x11-misc/rofi app-admin/stow x11-terms/kitty dev-vcs/git

## Quick Installation

You can pull down my entire desktop layout and link it instantly with a single command:

git clone https://github.com/luisarjavier1808-sys/dotfiles-gentoo.git ~/dotfiles && ~/dotfiles/setup.sh

