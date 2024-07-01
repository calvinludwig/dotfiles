function fish_greeting
	fortune | cowsay | lolcat
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/Code/gpssat/documents/aliases.sh


    alias g='git'
    alias ls='exa -l --icons --group-directories-first'
    alias pn='pnpm'
    alias vim='nvim -u NONE'
    alias get_idf='. $HOME/.esp/esp-idf/export.fish'
    alias fzf="fzf --preview 'bat --color=always {}' --preview-window '~3'"
	alias zj="zellij"
    alias cat="bat -p"

    export MANPAGER="sh -c 'col -bx | bat -l man -p'"

    zoxide init fish --cmd cd | source
    starship init fish | source
end
