#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval $(keychain --eval --quiet id_rsa)

export EDITOR=nvim
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

alias vi='nvim'
alias vim='nvim'
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias please='sudo $(fc -ln -1)'
alias mirror='xrandr --output HDMI-A-0 --same-as DisplayPort-2'
alias unmirror='xrandr --output HDMI-A-0 --right-of DisplayPort-2'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

WHITE="\[\e[38;2;255;255;255m\]"
PINK="\[\e[38;2;245;169;184m\]"
BLUE="\[\e[38;2;91;206;250m\]"

PS1="$BLUE██$PINK██$WHITE██$PINK██$BLUE██$WHITE\[\e[m\]\W>\$ "


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
