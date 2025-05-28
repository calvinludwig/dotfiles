return {
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'rose-pine-dawn',
    },
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
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
