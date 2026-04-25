source /usr/share/cachyos-fish-config/cachyos-config.fish

export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim
export MICRO_TRUECOLOR=1

set -gx UID 1000
set -gx GID 1000

if status is-interactive

    set -Ux FZF_DEFAULT_OPTS "
      --color=fg:#988090,bg:#1c1b19,hl:#e08060
      --color=fg+:#d8d0c0,bg+:#242320,hl+:#e08060
      --color=border:#3a3733,header:#c8b468,gutter:#1c1b19
      --color=spinner:#c09058,info:#80a090
      --color=pointer:#e08060,marker:#b07878,prompt:#c8b468"

    alias tm="tmux-home"
    alias ff="fastfetch"
    alias lazyvim='NVIM_APPNAME=lazyvim nvim'
    alias lv='NVIM_APPNAME=lazyvim nvim'
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
