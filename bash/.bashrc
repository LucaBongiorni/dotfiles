#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias l='ls --color=auto'
# alias ll='ls -l'
# alias la='ls -la'
alias ls='exa'
alias l='exa'
alias ll='exa -lh'
alias la='exa -lah'

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export IMG_VIEWER=feh
export TERM=xterm-256color
# [ -f /usr/share/doc/pkgfile/command-not-found.bash ] && source /usr/share/doc/pkgfile/command-not-found.bash
# [ -f /etc/profile.d/autojump.sh ] && source /etc/profile.d/autojump.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/share/doc/fzf/key-bindings.bash ] && source /usr/share/doc/fzf/key-bindings.bash

export FZF_DEFAULT_COMMAND="fd --type file --ignore-case --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --ignore-case --hidden -t d"
export FZF_TMUX=1

# wal -R
[ -f ~/.config/wpg/sequences ] && (cat ~/.config/wpg/sequences &)

# eval "$(pipenv --completion)"
# source /home/david/.config/broot/launcher/bash/br
# complete -C /usr/bin/terraform terraform

export NNN_BMS=''\
'h:~;'\
'd:~/Documents;'\
'n:~/Nextcloud;'\
'r:~/nfs/Expansion5/Medias/radarr'

export NNN_OPTS="cdEx"

[ -f /usr/bin/fish ] && exec fish
