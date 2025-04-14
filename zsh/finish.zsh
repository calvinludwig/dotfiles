zinit light hlissner/zsh-autopair

eval "$(zoxide init zsh)"

autoload -Uz compinit
compinit
zinit cdreplay -q

bindkey -e

eval "$(starship init zsh)"
