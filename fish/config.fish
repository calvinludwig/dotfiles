source /usr/share/cachyos-fish-config/cachyos-config.fish

export EDITOR=nvim
export VISUAL=nvim
export MICRO_TRUECOLOR=1

set -gx UID 1000
set -gx GID 1000

if status is-interactive
    set -Ux FZF_DEFAULT_OPTS "
      --color=fg:#797593,bg:#faf4ed,hl:#d7827e
      --color=fg+:#575279,bg+:#f2e9e1,hl+:#d7827e
      --color=border:#dfdad9,header:#286983,gutter:#faf4ed
      --color=spinner:#ea9d34,info:#56949f
      --color=pointer:#907aa9,marker:#b4637a,prompt:#797593"

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
