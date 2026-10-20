set -gx GOPATH $HOME/.local/go
# docker compose files reference ${UID}/${GID}; fish does not set them
set -gx UID (id -u)
set -gx GID (id -g)
