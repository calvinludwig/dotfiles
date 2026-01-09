source /usr/share/cachyos-fish-config/cachyos-config.fish

export EDITOR=nvim
export VISUAL=nvim
export MICRO_TRUECOLOR=1

set -gx UID 1000
set -gx GID 1000

if status is-interactive

    fish_config theme choose "Rosé Pine Dawn"

    alias ff="fastfetch"
    alias nv='nvim'
    alias zed='zeditor'
    alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
    alias cat="bat -p"

    alias ..="z .."
    alias ...="z ../.."

    alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

    zoxide init fish | source
    starship init fish | source
end

function fish_greeting
end
