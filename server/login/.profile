# Source global definitions

if [ -f /etc/profile ]; then
    . /etc/profile
    fi

    if [ -f /etc/bashrc ]; then
        . /etc/bashrc
        fi

        if [ -z "$SLURM_JOB_ID" ]
        then
            export PS1="`hostname -s`$"

            export PATH=/home/jve4pt/.yogi_utils/zsh/local/bin:$PATH
            export SHELL=`which zsh`
            [ -f "$SHELL" ] && exec "$SHELL" -l

            [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
            . "$HOME/.cargo/env"
        else
            export SHELL=`which bash`
            [ -f "$SHELL" ] && exec "$SHELL" -l
        fi

