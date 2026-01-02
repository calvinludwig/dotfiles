# File system
alias ls='eza -lh --group-directories-first --icons=auto'
alias la='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

alias ff="fastfetch"
alias nv='nvim'
alias inv='nvim $(fzf --preview "bat --color=always {}" --preview-window "~3")'
alias cat="bat -p"
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias aws-ec2-list="aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==\`Name\`].Value|[0],InstanceId,State.Name,InstanceType,PublicIpAddress,PrivateIpAddress,LaunchTime]' --output table"
