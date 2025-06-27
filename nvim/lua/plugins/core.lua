return {
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'rose-pine',
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
  {
    'neovim/nvim-lspconfig',
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        elixirls = {
          cmd = { '/home/ludwig/.elixir-ls/language_server.sh' },
        },
      },
    },
  },
}
