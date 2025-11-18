return {
  {
    'Mofiqul/adwaita.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'adwaita',
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
