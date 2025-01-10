# zinit setup ------------------------------------------------------------------
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# highlighting -----------------------------------------------------------------
zinit light zsh-users/zsh-syntax-highlighting

# auto pair
zinit light hlissner/zsh-autopair

# auto suggestions -------------------------------------------------------------
zinit light zsh-users/zsh-autosuggestions
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completions ------------------------------------------------------------------
zinit light zsh-users/zsh-completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# fzf --------------------------------------------------------------------------
export FZF_DEFAULT_OPTS=" \
--color=bg+:#ccd0da,spinner:#dc8a78,hl:#d20f39 \
--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
--color=marker:#7287fd,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39 \
--color=selected-bg:#bcc0cc \
--multi"

zstyle ':completion:*:git-checkout:*' sort false # disable sort when completing `git checkout`
zstyle ':completion:*:descriptions' format '[%d]' # set descriptions format to enable group support
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # set list-colors to enable filename colorizing
zstyle ':completion:*' menu no # force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath' # preview directory's content with eza when completing cd
zstyle ':fzf-tab:*' use-fzf-default-opts yes # To make fzf-tab follow FZF_DEFAULT_OPTS.
zstyle ':fzf-tab:*' switch-group '<' '>' # switch group using `<` and `>`

zinit light Aloxaf/fzf-tab
zstyle ':completion:*' menu no

eval "$(fzf --zsh)"

# plugins ----------------------------------------------------------------------
zinit snippet OMZP::sudo
zinit snippet OMZP::git
zinit snippet OMZP::aws
zinit snippet OMZP::dnf
zinit snippet OMZP::laravel
zinit snippet OMZP::command-not-found

# alias ------------------------------------------------------------------------
source "$HOME/gpssat/documents/aliases.sh"
alias ls='exa'
alias ll='exa --oneline --long --group --icons --git --group-directories-first'
alias ff="fastfetch"
alias nv='nvim'
alias sail="sh $([ -f sail ] && echo sail || echo vendor/bin/sail)"
alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
alias cat="bat -p"

# ------------------------------------------------------------------------------
LS_COLORS=$(vivid generate catppuccin-latte)
EZA_COLORS=$(vivid generate catppuccin-latte)

eval "$(zoxide init zsh)"

autoload -Uz compinit
compinit
zinit cdreplay -q

eval "$(starship init zsh)"
