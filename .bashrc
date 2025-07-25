# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt configuration
PS1="\n\[\e[38;5;132m\]\w\[\e[0m\] \
\$(git branch 2>/dev/null | grep \"*\" | sed \"s/*/(\e[38;5;167m&\e[0m)/\") \
\[\e[38;5;142m\]\$(jobs -p | wc -l | awk '{if (\$1>0) print \"+\"\$1}')\n\
\[\e[38;5;250m\]$\[\e[0m\] "

# LS_COLORS configuration
export LS_COLORS='di=38;5;240:fi=38;5;248:ln=38;5;109:ex=38;5;113:'
eval "$(dircolors -b)"

# Desktop session
export MOZ_ENABLE_WAYLAND=1
export CLUTTER_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export ECORE_EVAS_ENGINE=wayland-egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland
export NO_AT_BRIDGE=1

export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=river
export XDG_CURRENT_DESKTOP=river

# Default programs
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

# Environment variables
export PATH="$PATH:$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
export PYTHONSTARTUP="$HOME/.config/python/pythonrc"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export JDK_JAVA_OPTIONS="-Djava.util.prefs.userRoot='$XDG_CONFIG_HOME/java' -Dsun.java2d.opengl=true \
    -Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel \
    -Dswing.aatext=true"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"
export OLLAMA_MODELS="$XDG_DATA_HOME/ollama/models"
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"

# Shell options and settings
shopt -s autocd
stty -ixon -ixoff
export HISTSIZE=1000
export HISTFILESIZE=2000

# Aliases
alias grep='grep --color=auto'
alias ls='ls -F --color=auto'
alias l='ls -lF --color=auto'
alias la='ls -AF --color=auto'
alias ll='ls -lAF --color=auto'
alias c='clear'
alias t='tmux'
alias ta='tmux a'
alias e='exit'
alias torrent='transmission-gtk'
alias rr='cd $HOME/.config/river && ls -AF'
alias h='cd $HOME/ && ls -AF'
alias cf='cd $HOME/.config && ls -AF'
alias mu='cd $HOME/.local/music && ls -AF'
alias aud='cd $HOME/.local/audio && ls -AF'
alias dl='cd $HOME/.local/dl && ls -AF'
alias dox='cd $HOME/.local/dox && ls -AF'
alias dev='cd $HOME/.local/dev && ls -AF'
alias pra='cd $HOME/.local/practice && ls -AF'
alias vid='cd $HOME/.local/vids && ls -AF'
alias img='cd $HOME/.local/img && ls -AF'
alias sss='cd $HOME/.local/ss && ls -AF'
alias nt='cd $HOME/.local/dox/notes && ls -AF'
alias lk='nvim ~/.local/dox/notes/links'
alias gitr='cd $HOME/.local/git-repos && ls -AF'
alias tmp='cd /opt/void/ && ls -AF'
alias hs='cd $HOME/.local/hugo-dir && ls -AF'
alias hss='hugo server --noHTTPCache'
alias ff='fastfetch'
alias pc='sudo pacman -Sc'
alias ..='cd .. && ls -AF'
alias ...='cd ../../ && ls -AF'
alias yta-aac='yt-dlp --extract-audio --audio-format aac'
alias yta-best='yt-dlp --extract-audio --audio-format best'
alias yta-flac='yt-dlp --extract-audio --audio-format flac'
alias yta-mp3='yt-dlp --extract-audio --audio-format mp3'
alias ytv-best='yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias mkdir='mkdir -p'
alias jx='_JAVA_AWT_WM_NONREPARENTING=1 java'
alias jsql='java -cp .:/opt/mysql-connector-j-9.3.0/mysql-connector-j-9.3.0.jar'
alias jsqlc='javac -cp .:/opt/mysql-connector-j-9.3.0/mysql-connector-j-9.3.0.jar'

# Camera
alias cam='mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)'

# Mirror
alias mirror='wl-present mirror eDP-1'

# Git aliases
alias g='git'
alias gst='git status'
alias gc='git commit -m'
alias ga='git add'
alias gpl='git pull'
alias gpom='git push origin master'
alias gpu='git push'
alias gpuom='git push origin main'
alias gd='git diff'
alias gch='git checkout'
alias gnb='git checkout -b'
alias gac='git add . && git commit -m'
alias grs='git restore --staged .'
alias gre='git restore'
alias gr='git remote'
alias gcl='git clone'
alias gt='git ls-tree -r main --name-only'
alias gb='git branch'
alias gf='git fetch'
alias glg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n%  C(white)%s%C(reset) %C(dim white)- %an%C(reset)" --all'
