zinit light hlissner/zsh-autopair

eval "$(zoxide init zsh)"

autoload -Uz compinit
compinit
zinit cdreplay -q

eval "$(starship init zsh)"
