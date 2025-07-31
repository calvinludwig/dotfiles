require 'options'

vim.pack.add {
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', branch = 'master', build = ':TSUpdate' },
}

vim.cmd.colorscheme 'catppuccin-latte'
