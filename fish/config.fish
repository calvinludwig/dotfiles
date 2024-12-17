set fish_greeting

set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim

if status is-interactive

    # Commands to run in interactive sessions can go here
    source ~/gpssat/documents/aliases.sh

    alias ls='exa'
    alias ll='exa --oneline --long --group --icons --git --group-directories-first'

    alias zj="zellij"
    alias ff="fastfetch"
    alias pn='pnpm'
    alias lazyvim='NVIM_APPNAME=lazyvim nvim'
    alias nv='NVIM_APPNAME=lazyvim nvim'

    alias pint='./vendor/bin/pint'
    alias stan='./vendor/bin/phpstan --memory-limit=4G'
    alias sail="sh $([ -f sail ] && echo sail || echo vendor/bin/sail)"
    alias agro_php='docker exec -it agrofleet-php'

    alias get_idf='. $HOME/.esp/esp-idf/export.fish'
    alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'

    alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
    alias cat="bat -p"
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"

    fzf --fish | source
    zoxide init fish | source
    starship init fish | source
end

set -x LS_COLORS $(vivid generate catppuccin-latte)
set -x EZA_COLORS $(vivid generate catppuccin-latte)

source ~/.asdf/plugins/java/set-java-home.fish

# pnpm
set -gx PNPM_HOME "/home/ludwig/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
