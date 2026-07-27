export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim
export MICRO_TRUECOLOR=1

set -gx UID 1000
set -gx GID 1000

if status is-interactive

    set -Ux FZF_DEFAULT_OPTS "\
      --color=bg+:#414559,bg:#303446,spinner:#F2D5CF,hl:#E78284 \
      --color=fg:#C6D0F5,header:#E78284,info:#CA9EE6,pointer:#F2D5CF \
      --color=marker:#BABBF1,fg+:#C6D0F5,prompt:#CA9EE6,hl+:#E78284 \
      --color=selected-bg:#51576D \
      --color=border:#737994,label:#C6D0F5"

    fish_config theme choose catppuccin-frappe

    alias tm="tmux-home"
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
    #  colors
end
