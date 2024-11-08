return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({})
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    enabled = false,
    opts = {
      palettes = {
        carbonfox = {
          bg0 = "#181818",
          bg1 = "#1e1e1e",
          bg2 = "#242424",
          bg3 = "#2a2a2a",
          bg4 = "#303030",
          fg0 = "#ffffff",
          fg1 = "#f6f5f4",
          fg2 = "#deddda",
          fg3 = "#c0bfbc",
          black = "#000000",
          white = "#ffffff",
          red = { base = "#ed333b", bright = "#f66151", dim = "#e01b24" },
          green = { base = "#57e389", bright = "#8ff0a4", dim = "#33d17a" },
          yellow = { base = "#f8e45c", bright = "#f9f06b", dim = "#f6d32d" },
          blue = { base = "#62a0ea", bright = "#99c1f1", dim = "#3584e4" },
          magenta = { base = "#c061cb", bright = "#dc8add", dim = "#9141ac" },
          cyan = { base = "#b5835a", bright = "#cdab8f", dim = "#986a44" },
          orange = { base = "#ffa348", bright = "#ffbe6f", dim = "#ff7800" },
        },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "supermaven",
        group_index = 1,
        priority = 100,
      })
    end,
  },
}
