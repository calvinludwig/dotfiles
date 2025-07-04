export EDITOR=nvim

if status is-interactive
    alias ff="fastfetch"
    alias nv='nvim'
    alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
    alias cat="bat -p"

    alias ..="z .."
    alias ...="z ../.."

    alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

    fzf --fish | source
    zoxide init fish | source
    starship init fish | source
end

set -gx UID 1000
set -gx GID 1000

mise activate fish | source
