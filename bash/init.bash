source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
eval "$(symfony self:completion bash)"

eval "$(fzf --bash)"
eval "$(mise activate bash)"
eval "$(zoxide init bash)"
