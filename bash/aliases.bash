# File system
alias ls='eza -lh --group-directories-first --icons=auto'
alias la='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

alias ff="fastfetch"
alias nv='NVIM_APPNAME=lazyvim neovide'
alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
alias cat="bat -p"
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
