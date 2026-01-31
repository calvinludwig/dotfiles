set -U GOPATH $HOME/.local/go

set -gx GITHUB_PAT (kwallet-query -r GITHUB_PAT -f Passwords kdewallet 2>/dev/null)
