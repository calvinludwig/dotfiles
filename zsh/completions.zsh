zinit light zsh-users/zsh-completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# bun completions
[ -s "/home/ludwig/.bun/_bun" ] && source "/home/ludwig/.bun/_bun"

FPATH="$HOME/.asdf/completions:$FPATH"
FPATH="$HOME/.config/zsh/completions:$FPATH"

