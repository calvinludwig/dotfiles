if status is-interactive
    alias ff="fastfetch"
    alias nv='nvim'
    alias sail="sh $([ -f sail ] && echo sail || echo vendor/bin/sail)"
    alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
    alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
    alias cat="bat -p"
    alias paru="yay"

    alias ..="z .."
    alias ...="z ../.."
    alias a="php artisan"
    alias phpstan="./vendor/bin/phpstan analyze"
    alias peck="./vendor/bin/peck"
    alias pint="./vendor/bin/pint"
    alias pest="./vendor/bin/pest"
    alias pestc="./vendor/bin/pest --coverage"

    alias dk="docker"
    alias dkc="docker compose"
    alias dkps="docker ps --format '{{.ID}} ~ {{.Names}} ~ {{.Status}} ~ {{.Image}}'"

    export EDITOR=nvim

    fzf --fish | source
    zoxide init fish | source
    starship init fish | source
end
