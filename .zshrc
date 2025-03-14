# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/div/.zsh/completions:"* ]]; then export FPATH="/home/div/.zsh/completions:$FPATH"; fi
# Enable colors and change prompt:
#
export EDITOR='nvim'
export VISUAL='nvim'
# export BROWSER='chromium'
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_SDK_ROOT='/home/div/Android/Sdk/'
export JAVA_HOME='/usr/lib/jvm/java-17-openjdk-amd64'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export PATH=$PATH:~/go/bin/
export PATH=$PATH:"/home/div/flutter-sdk/flutter/bin:$PATH"
export PATH=$PATH:/home/div/anaconda3/bin/
export PATH=$PATH:/home/div/Downloads/blender-4.2.1-linux-x64/
export PATH=$PATH:/opt/gradle/gradle-8.10.2/bin
export PATH=$PATH:/usr/local/go/bin

autoload -U colors && colors
alias ls='ls --color=auto'
PS1="%B%F{26}[%f%b%B%F{red}%1d%f%b%F{26}]%f%F{26}$%f "
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
#function zle-keymap-select {
  #if [[ ${KEYMAP} == vicmd ]] ||
     #[[ $1 = 'block' ]]; then
    #echo -ne '\e[1 q'
  #elif [[ ${KEYMAP} == main ]] ||
       #[[ ${KEYMAP} == viins ]] ||
       #[[ ${KEYMAP} = '' ]] ||
       #[[ $1 = 'beam' ]]; then
    #echo -ne '\e[1 q'
  #fi
#}
#
#zle -N zle-keymap-select
#zle-line-init() {
    #zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    #echo -ne "\e[5 q"
#}
#zle -N zle-line-init
#echo -ne '\e[5 q' # Use beam shape cursor on startup.
#preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

alias python=python3
alias sqlite=sqlite3
alias vim=nvim alias nv=nvim .
alias mp=mocp
alias rn=ranger
alias nf=neofetch
alias youtube-dl=yt-dlp
alias pacin="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -Sy"
alias pacrm="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -Sy"
alias newsboat="newsboat -C ~/.config/newsboat/config -u ~/.config/newsboat/urls"
alias throttle="sudo wondershaper -a wlp4s0 -d 50 -u 20"
alias throttle-disable="sudo wondershaper -a wlp4s0 -c"
alias htop="htop -t"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/div/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/div/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/div/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/div/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/home/div/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/home/div/.deno/env"export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
