feh --bg-fill ~/.config/back.jpg &
picom --backend glx --vsync &
xrdb merge ~/.Xresources &
xset r rate 300 50 &
xset b off &
xsetroot -cursor_name left_ptr &
slstatus &
xmodmap -e "keycode 66 = F7" &
xmodmap -e "keycode 73 = Caps_Lock" &
xmodmap -e "clear lock" &

#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session

#setxkbmap -model pc105 -layout us -option "" &

exec i3 
#exec dwm

