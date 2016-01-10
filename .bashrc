#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bashrc.global ]
then
    source /etc/bashrc.global
else
    PS1="\[\e[32m\]\u\[\e[35m\]@\h \[\e[0m\]\w$ "
fi

ulimit -u 500
umask 077

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
# export TMOUT=3600
