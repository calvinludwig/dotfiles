function btop --wraps btop --description 'btop with the Catppuccin flavor matching the terminal'
    # btop can't detect light/dark, so point its config at the current flavor before launch
    set -q CATPPUCCIN_FLAVOR; or set -l CATPPUCCIN_FLAVOR frappe
    sed -i "s|^color_theme = .*|color_theme = \"$HOME/.config/btop/themes/catppuccin_$CATPPUCCIN_FLAVOR.theme\"|" ~/.config/btop/btop.conf
    command btop $argv
end
