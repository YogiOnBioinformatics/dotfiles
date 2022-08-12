# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH=/home/jve4pt/.yogi_utils/zsh/local/bin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
