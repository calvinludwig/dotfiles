source "$HOME/gpssat/documents/aliases.sh"
alias ff="fastfetch"
alias nv='nvim'
alias sail="sh $([ -f sail ] && echo sail || echo vendor/bin/sail)"
alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
alias cat="bat -p"

alias phpstan="./vendor/bin/phpstan analyze"
alias pint="./vendor/bin/pint"
alias pest="./vendor/bin/pest"
alias pestc="./vendor/bin/pest --coverage"
