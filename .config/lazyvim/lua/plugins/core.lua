return {
  {
    'LazyVim/LazyVim',
    opts = {
      colorscheme = 'ember', -- "ember" | "ember-soft" | "ember-light"
    },
  },
  {
    'ember-theme/nvim',
    name = 'ember',
    priority = 1000,
    config = function()
      require('ember').setup {
        variant = 'ember', -- "ember" | "ember-soft" | "ember-light"
      }
    end,
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
