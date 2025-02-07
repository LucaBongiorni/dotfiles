#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# #alias ls='ls --color=auto'
# #alias l='ls --color=auto'
# #alias ll='ls -l'
# #alias la='ls -la'
alias ls='exa'
alias l='exa'
alias ll='exa -lh'
alias la='exa -lah'

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export IMG_VIEWER=imv
#export TERM=xterm-256color
# [ -f /usr/share/doc/pkgfile/command-not-found.bash ] && source /usr/share/doc/pkgfile/command-not-found.bash
# [ -f /etc/profile.d/autojump.sh ] && source /etc/profile.d/autojump.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/share/doc/fzf/key-bindings.bash ] && source /usr/share/doc/fzf/key-bindings.bash

export FZF_DEFAULT_COMMAND="fd --type file --ignore-case --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --ignore-case --hidden -t d"
export FZF_TMUX=1

# export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland
# export QT_QPA_PLATFORM=wayland-egl
#export QT_WAYLAND_FORCE_DPI=physical
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# should not be set globally
# export GDK_BACKEND=wayland
export BEMENU_BACKEND=wayland
# export SDL_VIDEODRIVER=wayland
export SDL_VIDEODRIVER=x11
export MOZ_ENABLE_WAYLAND=1
# export XDG_CURRENT_DESKTOP=Unity

if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi

#wal -R
[ -f ~/.config/wpg/sequences ] && (cat ~/.config/wpg/sequences &)

export NNN_OPTS="cdEx"
export NNN_PLUG="f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview"

[ -f /usr/bin/fish ] && exec fish
