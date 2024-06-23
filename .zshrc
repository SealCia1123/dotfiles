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

# Frequently used commands
alias ..='z ..'
alias ...='z ../..'
alias ....='z ../../..'
alias update='sudo pacman -Syu;yay'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias ainstall='yay -S'
alias asearch='yay -Ss'
alias aremove='yay -Rns'
alias ra='ranger'
alias cp='cp -vair'
alias vi='nvim'
alias cdh='cd ~'
# alias ls='lsd'
# alias ll='lsd -l'
# alias la='lsd -la'
# alias reboot='sudo reboot'
# alias shutdown='sudo shutdown now'
alias reboot='sudo /sbin/shutdown -r now'
alias shutdown='sudo /sbin/shutdown -a now'
alias dl='aria2c -x 16 -s 16' # Quick download command using aria2

# Hypr shortcuts
alias hyprexec='hyprctl dispatch exec' # Eg: hyprexec firefox
alias hyprlogout='hyprctl dispatch exit'
alias bsp-logout='bspc quit'

# TMUX shortcuts
alias t='tmux'
alias ta='tmux attach'
alias tk='tmux kill-session -t'
alias df='df -h'

# Boot to windows/fedora
alias winboot='sudo efibootmgr --bootnext 0002; sudo reboot'
alias fedoraboot='sudo efibootmgr --bootnext 0004; sudo reboot'

# Enable vim mode in terminal
# set -o vi

# source zsh syntax highlighting
source /home/sealcia/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export TERMINAL="/usr/bin/kitty"
export BROWSER="/usr/bin/thorium-browser"
# export XMODIFIERS=@im=fcitx
# export QT_IM_MODULE=fcitx
# export GTK_IM_MODULE=fcitx

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
