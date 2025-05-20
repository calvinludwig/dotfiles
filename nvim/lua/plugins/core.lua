return {
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'catppuccin-latte',
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      background = {
        light = 'latte',
        dark = 'frappe',
      },
      color_overrides = {
        frappe = {
          base = '#000000',
          mantle = '#141414',
          crust = '#1f1f1f',
        },
      },
    },
  },
  {
    'folke/snacks.nvim',
    opts = {
      indent = { enabled = false },
    },
  },
  {
    'saghen/blink.cmp',
    opts = {
      completion = {
        trigger = {
          show_on_keyword = false,
          show_on_trigger_character = false,
        },
      },
    },
  },
}
