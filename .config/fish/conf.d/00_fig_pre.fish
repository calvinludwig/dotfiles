contains $HOME/.local/bin $PATH; or set -a PATH $HOME/.local/bin
command -qv kiro-cli; and eval (kiro-cli init fish pre --rcfile 00_fig_pre | string split0)
