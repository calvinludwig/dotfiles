export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim
export MICRO_TRUECOLOR=1

set -gx UID 1000
set -gx GID 1000

if status is-interactive

    set -Ux FZF_DEFAULT_OPTS "\
      --color=bg+:#CCD0DA,bg:#EFF1F5,spinner:#DC8A78,hl:#D20F39 \
      --color=fg:#4C4F69,header:#D20F39,info:#8839EF,pointer:#DC8A78 \
      --color=marker:#7287FD,fg+:#4C4F69,prompt:#8839EF,hl+:#D20F39 \
      --color=selected-bg:#BCC0CC \
      --color=border:#9CA0B0,label:#4C4F69"

    fish_config theme choose catppuccin-frappe

    alias tm="tmux-home"
    alias ff="fastfetch"
    alias nv='nvim'
    alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
    alias cat="bat -p"
    alias ls="eza"
    alias ll="eza -l"
    alias la="eza -la"

    alias ..="z .."
    alias ...="z ../.."

    alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

    zoxide init fish | source
    starship init fish | source
end

function fish_greeting
    #  colors
end
