set fish_greeting

set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim

if status is-interactive

    # Commands to run in interactive sessions can go here
    source ~/Code/gpssat/documents/aliases.sh

    alias ls='exa'
    alias ll='exa --oneline --long --group --icons --git --group-directories-first'

    alias zj="zellij"
    alias ff="fastfetch"
    alias pn='pnpm'
    alias nv='nvim'
    alias vim='nvim -u NONE'

    alias get_idf='. $HOME/.esp/esp-idf/export.fish'
    alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'

    alias sail="./vendor/bin/sail"
    alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
    alias cat="bat -p"
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"

    fzf --fish | source
    zoxide init fish | source
    starship init fish | source
    if test "$TERM" = xterm-kitty
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end

set -x LS_COLORS $(vivid generate catppuccin-mocha)
set -x EZA_COLORS $(vivid generate catppuccin-mocha)

source ~/.asdf/plugins/java/set-java-home.fish

# pnpm
set -gx PNPM_HOME "/home/ludwig/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
