# THIS FILE IS MANAGED BY ANSIBLE, DO NOT EDIT MANUALLY

# shellcheck shell=bash

# Global aliases
alias vi='vim'
alias gti='git'
alias open="xdg-open"
alias cmount="mount | column -t"
alias codei="code-insiders"
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CF'

# Command hard to remember
#shellcheck disable=SC2139
alias mount_ram="mkdir $HOME/ram; mount -t tmpfs tmpfs $HOME/ram -o size=1000m"
alias loop_working="sudo modprobe v4l2loopback; ffmpeg -stream_loop -1 -re -i Modèles/loop.webm  -f v4l2 /dev/video2"
alias portainer='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# Specific to some packages installation
alias mcat='mdv'
if command -v lsd >/dev/null 2>&1; then
    alias ls='lsd'
fi
if command -v bat >/dev/null 2>&1; then
    alias cat='bat'
fi
if command -v prettyping >/dev/null 2>&1; then
    alias ping='prettyping'
fi
if command -v htop >/dev/null 2>&1; then
    alias top="sudo htop"
fi
if command -v ncdu >/dev/null 2>&1; then
    alias du="ncdu -rr -x --exclude .git --exclude node_modules"
fi
alias help='tldr'
alias xclip='xclip -select clipboard'
alias setup="tmuxinator start default"
alias logo='clear; neofetch'

# Ubuntu/Debian specific aliases
alias agi='sudo apt install'
alias acs='apt search'
alias acsh='apt show'
alias agr='sudo apt remove'
alias agar='sudo apt autoremove'
alias aguu='sudo apt update && sudo apt upgrade'
alias agu='sudo apt upgrade'