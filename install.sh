#!/bin/bash
set -x

sudo cp -r scripts/* /usr/bin/
sudo pacman -Sy - < pkglist
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
bash config.sh
yay -Sy - < pkglist
sudo cp ./config/touchpad/70-synaptics.conf /etc/X11/xorg.conf.d/

chsh -s $(which zsh)

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
