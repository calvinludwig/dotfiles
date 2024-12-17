return {
  {
    "LazyVim/LazyVim",
    dependencies = {
      {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
          require("github-theme").setup({})
        end,
      },
    },
    opts = {
      colorscheme = "github_light_default",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
    },
  },
}
