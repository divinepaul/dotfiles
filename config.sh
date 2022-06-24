#!/bin/bash
set -x


rm -r ~/.config/alacritty
rm -r ~/.config/bspwm
rm -r ~/.config/kitty
rm -r ~/.config/mpd
rm -r ~/.config/newsboat
rm -r ~/.config/nvim
rm -r ~/.config/picom
rm -r ~/.config/polybar
rm -r ~/.config/ranger
rm -r ~/.config/sxhkd
rm -r ~/.config/tmux
rm -r ~/.config/touchpad
rm -r ~/.config/xmobar
rm -r ~/.config/zathura
rm -r ~/.config/i3
rm -r ~/.config/i3status
rm -r ~/.config/i3blocks

ln -s ~/projects/dotfiles/config/alacritty ~/.config/alacritty
ln -s ~/projects/dotfiles/config/bspwm ~/.config/bspwm
ln -s ~/projects/dotfiles/config/kitty ~/.config/kitty
ln -s ~/projects/dotfiles/config/mpd ~/.config/mpd
ln -s ~/projects/dotfiles/config/newsboat ~/.config/newsboat
ln -s ~/projects/dotfiles/config/nvim ~/.config/nvim
ln -s ~/projects/dotfiles/config/picom ~/.config/picom
ln -s ~/projects/dotfiles/config/polybar ~/.config/polybar
ln -s ~/projects/dotfiles/config/ranger ~/.config/ranger
ln -s ~/projects/dotfiles/config/sxhkd ~/.config/sxhkd
ln -s ~/projects/dotfiles/config/tmux ~/.config/tmux
ln -s ~/projects/dotfiles/config/touchpad ~/.config/touchpad
ln -s ~/projects/dotfiles/config/xmobar ~/.config/xmobar
ln -s ~/projects/dotfiles/config/zathura ~/.config/zathura
ln -s ~/projects/dotfiles/config/i3 ~/.config/i3
ln -s ~/projects/dotfiles/config/i3status ~/.config/i3status
ln -s ~/projects/dotfiles/config/i3blocks ~/.config/i3blocks
