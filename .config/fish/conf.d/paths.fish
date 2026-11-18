# User-local executable paths.
#
# Declared as global (session) variables here rather than universal variables,
# so they are deterministic and version-controlled instead of persisting
# per-machine in fish_variables.
fish_add_path --global \
    $HOME/.local/bin \
    $HOME/.local/scripts \
    $HOME/.cargo/bin \
    $HOME/.composer/vendor/bin \
    $HOME/.npm-global/bin \
    $HOME/go/bin \
    $HOME/.local/go/bin \
    $HOME/.config/bin \
    $HOME/.local/share/bob/nvim-bin \
    $HOME/development/flutter/bin \
    $HOME/.pub-cache/bin \
    $HOME/Android/Sdk/cmdline-tools/latest/bin \
    $HOME/Android/Sdk/platform-tools \
    $HOME/Android/Sdk/emulator
