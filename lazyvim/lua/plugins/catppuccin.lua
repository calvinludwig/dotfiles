return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  config = function()
    require('catppuccin').setup {
      flavour = 'latte', -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = true, -- disables setting the background color.
      term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      default_integrations = true,
      auto_integrations = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    }
  end,
}
