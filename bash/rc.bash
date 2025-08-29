# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add: 'source "$HOME"/.config/bash/rc.bash' to ~/.bashrc

source "$HOME"/.config/bash/shell.bash
source "$HOME"/.config/bash/aliases.bash
source "$HOME"/.config/bash/functions.bash
source "$HOME"/.config/bash/envs.bash
bind -f "$HOME"/.config/bash/inputrc.bash
source "$HOME"/.config/bash/prompt.bash
source "$HOME"/.config/bash/init.bash
