-- Plugins
vim.pack.add {
  { src = 'https://github.com/MunifTanjim/nui.nvim' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/rose-pine/neovim' },
  { src = 'https://github.com/m4xshen/hardtime.nvim' },
  { src = 'https://github.com/nvim-mini/mini.nvim' },
  { src = 'https://github.com/calvinludwig/mago.nvim' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range '*' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope-ui-select.nvim' },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/chomosuke/typst-preview.nvim' },
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
}

vim.cmd 'colorscheme rose-pine-dawn'

require('mini.notify').setup { window = { max_width_share = 0.6 } }
require('mini.statusline').setup {}

require('hardtime').setup {}
require('mago-nvim').setup {}
require('blink.cmp').setup {
  keymap = { preset = 'default' },
  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = 'mono',
  },
  signature = { enabled = true },
}

require('oil').setup {
  view_options = {
    show_hidden = true,
  },
  lsp_file_methods = {
    enabled = true,
    timeout_ms = 1000,
    autosave_changes = true,
  },
  columns = {
    'icon',
  },
  float = {
    max_width = 0.5,
    max_height = 0.7,
    border = 'rounded',
  },
}

require('telescope').setup {
  defaults = {
    preview = { treesitter = true },
    color_devicons = true,
    sorting_strategy = 'ascending',
    path_displays = { 'smart' },
  },
  pickers = {

    find_files = {

      hidden = true,
    },
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {
        -- even more opts
      },
    },
    fzf = {},
  },
}
require('telescope').load_extension 'ui-select'
require('telescope').load_extension 'fzf'
