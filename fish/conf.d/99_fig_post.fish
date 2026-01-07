contains $HOME/.local/bin $PATH; or set -a PATH $HOME/.local/bin
command -qv kiro-cli; and eval (kiro-cli init fish post --rcfile 99_fig_post | string split0)
