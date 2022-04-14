#!/bin/bash
set -x

cp -r scripts/* /usr/bin/
pacman -S - < pkglist
yay -S - < pkglist
cp ./config/touchpad/70-synaptics.conf /etc/X11/xorg.conf.d/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
