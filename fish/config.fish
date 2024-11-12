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
    alias ff="fastfetch"
    alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
    alias cat="bat -p"

    fzf --fish | source

    export MANPAGER="sh -c 'col -bx | bat -l man -p'"

    # eval (zellij setup --generate-auto-start fish | string collect)
    zoxide init fish | source
    starship init fish | source

end

source ~/.asdf/plugins/java/set-java-home.fish

# pnpm
set -gx PNPM_HOME "/home/ludwig/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
