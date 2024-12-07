#! /bin/bash

kitty +kitten themes --reload-in=all Catppuccin-Latte

sed -i 's/catppuccin-mocha/catppuccin-latte/' ./git/config
sed -i 's/catppuccin-mocha/catppuccin-latte/' ./lazyvim/lua/plugins/core.lua
sed -i 's/catppuccin-mocha/catppuccin-latte/' ./zellij/config.kdl
sed -i 's/catppuccin-mocha/catppuccin-latte/' ./fish/config.fish
sed -i 's/"catppuccin_mocha"/"catppuccin_latte"/' ./starship.toml
sed -i 's/set variant mocha/set variant latte/' ./fish/conf.d/fzf.fish
sed -i 's/Catppuccin Mocha/Catppuccin Latte/' ./bat/config

cp ./yazi/catppuccin-latte-yellow.toml ./yazi/theme.toml
cp ./lazygit/latte.yml ./lazygit/config.yml
cp ./bottom/latte.toml ./bottom/bottom.toml

fish <<'END_FISH'
  echo "y" | fish_config theme save "Catppuccin Latte"
END_FISH

gsettings set org.gnome.desktop.interface color-scheme 'default'
