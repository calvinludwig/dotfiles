set fish_greeting

if status is-interactive

    # Commands to run in interactive sessions can go here
    source ~/Code/gpssat/documents/aliases.sh

    alias g='git'
	alias ls='exa'
    alias ll='exa --oneline --long --group --icons --git --group-directories-first'
    alias pn='pnpm'
    alias vim='nvim -u NONE'
    alias get_idf='. $HOME/.esp/esp-idf/export.fish'
	alias nv='nvim'
    alias fzf="fzf --preview 'bat --color=always {}' --preview-window '~3'"
	alias inv='nvim $(fzf)'
	alias zj="zellij"
	alias sail="./vendor/bin/sail"

    alias cat="bat -p"

	set -Ux FZF_DEFAULT_OPTS "
	--color=fg:#908caa,bg:#232136,hl:#ea9a97
	--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
	--color=border:#44415a,header:#3e8fb0,gutter:#232136
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"
	fzf --fish | source

    export MANPAGER="sh -c 'col -bx | bat -l man -p'"

    zoxide init fish | source
    starship init fish | source
end

fish_add_path /home/ludwig/.spicetify
