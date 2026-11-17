#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export EDITOR='nvim'
export VISUAL='nvim'
# export BROWSER='chromium'
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_SDK_ROOT='/home/div/Android/Sdk'
export JAVA_HOME='/usr/lib/jvm/java-21-openjdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export PATH=$PATH:~/go/bin/
export PATH=$PATH:/home/div/anaconda3/bin/
export PATH=$PATH:/home/div/Downloads/blender-4.2.1-linux-x64/
export PATH=$PATH:/opt/gradle/gradle-8.10.2/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/div/Downloads/Code/software/flutter/bin
export PATH=$PATH:$HOME/.pub-cache/bin


alias vim="nvim"
alias nv="nvim"
alias mp="mocp"
alias rn="ranger"
alias pacin="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pacrm="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"

push() {
  if [ $# -eq 0 ]; then
    git push
  else
    git add .
    git commit -m "$*"
    git push
  fi
}


alias python=python3
alias sqlite=sqlite3

# opencode
export PATH=/home/div/.opencode/bin:$PATH
export GTK_THEME=Adwaita-dark

alias cd=z
eval "$(zoxide init bash)"

# fnm
FNM_PATH="/home/div/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell bash)"
fi
