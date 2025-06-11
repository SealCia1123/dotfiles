# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$HOME/.local/bin":$PATH
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Frequently used commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias update='sudo pacman -Syu --noconfirm;paru -Syu --noconfirm'
alias install='sudo pacman -S --noconfirm'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias ainstall='paru -S --noconfirm'
alias asearch='paru -Ss'
alias aremove='paru -Rns'
alias yy='yazi'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
# alias suspend='i3lock -c 111111;systemctl suspend'
# alias cp='cp -vair'
alias vim='nvim'
alias lv='NVIM_APPNAME=lv nvim'
alias lg='lazygit'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'

alias dl='aria2c -x 16 -s 16' # Quick download command using aria2
alias sde='sudoedit'

# Hyprland shortcuts
alias hylock='systemctl suspend && hyprlock'
alias i3turn-off-eDP-1='xrandr --output eDP-1 --off;xrandr'

# TMUX shortcuts
alias t="tmux new -s home"
alias ta='tmux attach -t'
alias tk='tmux kill-session -t'
alias tl='tmux ls'
alias df='df -h'

# Boot to windows/fedora
alias winboot='sudo efibootmgr --bootnext 0003; sudo reboot'
alias fedoraboot='sudo efibootmgr --bootnext 0001; sudo reboot'
source <(fzf --zsh)

# Enable vim mode in terminal
# set -o vi

# source zsh syntax highlighting
# source /home/sealcia/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export TERMINAL="/usr/bin/ghostty"
export BROWSER="/usr/bin/brave"
export FIREFOX="/usr/bin/librewolf"
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
# export XMODIFIERS=@im=fcitx
# export QT_IM_MODULE=fcitx
# export GTK_IM_MODULE=fcitx

export FZF_COMPLETION_TRIGGER='::'
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
# --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
# --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
# Use nvim for viewing man page
HISTSIZE=5000
HISTFILESIZE=10000
export MANPAGER='nvim +Man!'

export PATH=$PATH:/home/sealcia/.local/bin

export GDK_BACKEND=wayland
