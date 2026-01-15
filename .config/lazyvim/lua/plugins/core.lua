return {
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'rose-pine-dawn',
    },
  },
  { 'mason-org/mason-lspconfig.nvim', enabled = false },
  { 'mason-org/mason.nvim', enabled = false },
  {
    'folke/snacks.nvim',
    opts = {
      indent = { enabled = false },
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true,
          },
        },
      },
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
