# Point tools that can't detect light/dark at the Catppuccin flavor matching the terminal.
status is-interactive; or return

function __theme_sync --on-variable fish_terminal_color_theme
    if test "$fish_terminal_color_theme" = light
        set -gx CATPPUCCIN_FLAVOR latte
        set -gx FZF_DEFAULT_OPTS "\
          --color=light,bg+:#CCD0DA,bg:#EFF1F5,spinner:#DC8A78,hl:#D20F39 \
          --color=fg:#4C4F69,header:#D20F39,info:#8839EF,pointer:#DC8A78 \
          --color=query:#4C4F69,marker:#7287FD,fg+:#4C4F69,prompt:#8839EF,hl+:#D20F39 \
          --color=selected-bg:#BCC0CC \
          --color=border:#9CA0B0,label:#4C4F69"
    else
        set -gx CATPPUCCIN_FLAVOR frappe
        set -gx FZF_DEFAULT_OPTS "\
          --color=bg+:#414559,bg:#303446,spinner:#F2D5CF,hl:#E78284 \
          --color=fg:#C6D0F5,header:#E78284,info:#CA9EE6,pointer:#F2D5CF \
          --color=query:#C6D0F5,marker:#BABBF1,fg+:#C6D0F5,prompt:#CA9EE6,hl+:#E78284 \
          --color=selected-bg:#51576D \
          --color=border:#737994,label:#C6D0F5"
    end
    set -gx DELTA_FEATURES catppuccin-$CATPPUCCIN_FLAVOR
    set -gx LG_CONFIG_FILE "$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/$CATPPUCCIN_FLAVOR.yml"
end

__theme_sync
