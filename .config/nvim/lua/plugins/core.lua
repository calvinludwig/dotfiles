return {
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'catppuccin-nvim', -- plain 'catppuccin' resolves to nvim 0.12's builtin catppuccin.vim (mocha)
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    opts = { background = { light = 'latte', dark = 'frappe' } },
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
  {
    'neovim/nvim-lspconfig',
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    'martindur/zdiff.nvim',
    cmd = 'Zdiff',
    keys = {
      {
        '<leader>zd',
        function()
          require('zdiff').open()
        end,
        desc = 'Zdiff (uncommitted)',
      },
      {
        '<leader>zD',
        function()
          require('zdiff').open 'main'
        end,
        desc = 'Zdiff (vs main)',
      },
    },
    opts = {},
  },
}
