export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim
export MICRO_TRUECOLOR=1

set -gx UID 1000
set -gx GID 1000

if status is-interactive

    set -Ux FZF_DEFAULT_OPTS "
      --color=fg:#908caa,bg:#191724,hl:#ebbcba
      --color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
      --color=border:#403d52,header:#31748f,gutter:#191724
      --color=spinner:#f6c177,info:#9ccfd8
      --color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

    fish_config theme choose "Rosé Pine"

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
