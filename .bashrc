# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. ~/.shell/colors

if [ -f /etc/bashrc.global ]
then
    source /etc/bashrc.global
fi

if [ "`uname -o`" == "Cygwin" ]
then
    PS1="\n${FG_GREEN}\u@\h ${FG_YELLOW}\w${FM_RESET}\n\$ "
elif [[ `whoami` == "root" ]]
then
    PS1="${FM_ADMIN}\u${FM_RESET}${FM_MACHINE}@\h ${FM_RESET}\w# "
    umask 022
    export TMOUT=600
    ulimit -u 500
else
    PS1="${FM_USER}\u${FM_MACHINE}@\h ${FM_RESET}\w$ "
    umask 077
    ulimit -u 500
fi

set +H  # no problems with exclamation mark

alias ls="ls --color=auto -h --group-directories-first --time-style=long-iso"
alias ll="ls -l"
alias la="ls -A"
alias l="ls -CF"
alias v="vim -R"
alias less="less -R"
alias df="df -h"
alias du="du -h"
alias grep="grep --color"
alias fgrep="fgrep --color"
alias egrep="egrep --color"
alias free="free -h"
alias pdflatex="pdflatex -output-directory $HOME/tmp/pdf"

export PATH=~/bin:~/virtualenv/bin:~/.local/bin:~/.gem/ruby/2.2.0/bin:$PATH
export EDITOR="vim"
export MANPAGER="/usr/bin/most -s"
export MAILPATH=~/mail/inbox

if [ -f ~/.bashrc.local ]
then
    source ~/.bashrc.local
fi
