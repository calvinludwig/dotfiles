return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.completion.autocomplete = false
      return opts
    end,
  },
}
