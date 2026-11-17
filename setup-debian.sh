#!/bin/bash
set -xe


# all symlinks
rm -rf ~/.config/bspwm
rm -rf ~/.config/kitty
rm -rf ~/.config/mpd
rm -rf ~/.config/newsboat
rm -rf ~/.config/nvim
rm -rf ~/.config/picom
rm -rf ~/.config/polybar
rm -rf ~/.config/ranger
rm -rf ~/.config/sxhkd
rm -rf ~/.config/tmux
rm -rf ~/.config/touchpad
rm -rf ~/.config/xmobar
rm -rf ~/.config/zathura
rm -rf ~/.config/i3
rm -rf ~/.config/i3status
rm -rf ~/.config/i3blocks
rm -rf ~/.config/dunst
rm -rf ~/.config/alacritty
rm -f  ~/.Xresources
rm -f ~/.xinitrc
rm -f ~/.zshrc
rm -f ~/.zprofile
rm -f ~/.bashrc
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
ln -s ~/projects/dotfiles/config/dunst ~/.config/dunst
ln -s ~/projects/dotfiles/.Xresources ~/.Xresources
ln -s ~/projects/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/projects/dotfiles/.zshrc ~/.zshrc
ln -s ~/projects/dotfiles/.zprofile ~/.zprofile
ln -s ~/projects/dotfiles/.bashrc ~/.bashrc

# debian pkgs
sudo apt install -f -y ninja-build \
gettext \
cmake \
unzip \
curl \
git \
htop \
man-db \
manpages \
fastfetch \
xserver-xorg-core \
xinit \
i3-wm \
i3blocks \
chromium \
fonts-noto \
suckless-tools \
stterm \
alsa-utils \
pulseaudio \
ranger \
tmux \
zsh \
zsh-autosuggestions \
zsh-syntax-highlighting \
xserver-xorg-input-synaptics \
feh \
picom \
mpv \
ffmpeg \
xclip \
udisks2 \
ntfs-3g \
sxiv \
zathura \
zathura-pdf-poppler \
ueberzug \
dunst \
maim \
brightnessctl \
rofi \
ripgrep \

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# i dont use zsh anymore but whatever
mkdir -p ~/.cache/zsh/
touch ~/.cache/zsh/history

sudo cp ~/projects/dotfiles/scripts/* /usr/bin
