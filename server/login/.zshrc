# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

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
plugins=(git zsh-autosuggestions F-Sy-H )

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


# update "fpath" to get completions plugin to work
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#locale variables
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# update path variable to get newest version of tools

# fzf
export PATH=/home/jve4pt/.yogi_utils/fzf/bin/fzf:$PATH
# git
export PATH=/home/jve4pt/.yogi_utils/git-2.37.1/compiled/libexec/git-core:$PATH
# nano
export PATH=/home/jve4pt/.yogi_utils/nano-6.3/src:$PATH
# tmux
export PATH=/home/jve4pt/.yogi_utils/tmux-3.3a/compiled/bin:$PATH
# curl
export PATH=/home/jve4pt/.yogi_utils/curl-7.83.1/compiled/bin:$PATH
export PATH=/home/jve4pt/.yogi_utils/curl-7.83.1/compiled/lib:$PATH

# Basic Aliases
alias ls='ls --color'
alias grep='grep --color'
alias la='ls -lha --color --time-style=long-iso'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias .='cd ..'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias bat='/home/jve4pt/.yogi_utils/bat-v0.21.0-x86_64-unknown-linux-musl/bat --style=full --force-colorization'
alias hyperfine='/home/jve4pt/.yogi_utils/hyperfine-v1.14.0-x86_64-unknown-linux-musl/hyperfine'

# module load python/.3.8.8
module load anaconda/2020.11-py3.8

# SFTP Alias 
alias sftp='sftp -oServerAliveInterval=300 -oServerAliveCountMax=3'

# "cd" function
cd() {
    builtin cd "$@" && ls --color
}

# tmux Aliases 
alias tn='tmux new -s' 
alias tls='tmux ls'
alias ta='tmux a -t' 
alias tk='tmux kill-session -t'

# History size and control
export HISTSIZE=1000000
export HISTCONTROL=$HISTCONTROL:ignoredups
export HISTFILESIZE=50000000
export HISTIGNORE="ls:cd:pwd:top:wc:tls:ta:tn:exit:more:less"
setopt HIST_IGNORE_ALL_DUPS

# Welcome Message
printf "\n"
printf "\n"
echo "WELCOME YogiOnBioinformatics"
cat ~/.login_pic
printf "\n"
printf "\n"
