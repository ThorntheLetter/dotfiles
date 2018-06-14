#
# ~/.bashrc
#

export PATH=$PATH:/opt/bin:"$HOME/bin"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias emacs='emacsclient --alternate-editor="" -c -nw'
alias emax='emacsclient --alternate-editor="" -c'
alias vimp='vim -u ~/.vim/vimp.vim'

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx
fi
