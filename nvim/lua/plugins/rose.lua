return {
  -- lua/plugins/rose-pine.lua
  'rose-pine/neovim',
  name = 'rose-pine',
  opts = {
    variant = 'auto', -- auto, main, moon, or dawn
    dark_variant = 'main', -- main, moon, or dawn
    dim_inactive_windows = true,
    extend_background_behind_borders = true,
    enable = {
      terminal = true,
      legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
      migrations = false, -- Handle deprecated options automatically
    },
  },
}
