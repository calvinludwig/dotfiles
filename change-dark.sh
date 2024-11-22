#! /bin/bash

kitty +kitten themes --reload-in=all Catppuccin-Mocha

sed -i 's/catppuccin-latte/catppuccin-mocha/' ./nvim/lua/plugins/core.lua
sed -i 's/catppuccin-latte/catppuccin-mocha/' ./git/config
sed -i 's/catppuccin-latte/catppuccin-mocha/' ./zellij/config.kdl
sed -i 's/catppuccin-latte/catppuccin-mocha/' ./fish/config.fish
sed -i 's/"catppuccin_latte"/"catppuccin_mocha"/' ./starship.toml
sed -i 's/set variant latte/set variant mocha/' ./fish/conf.d/fzf.fish

cp ./yazi/catppuccin-mocha-yellow.toml ./yazi/theme.toml
cp ./lazygit/mocha.yml ./lazygit/config.yml
cp ./bottom/mocha.toml ./bottom/bottom.toml

fish <<'END_FISH'
  echo "y" | fish_config theme save "Catppuccin Mocha"
END_FISH

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
