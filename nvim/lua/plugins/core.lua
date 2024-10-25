return {
  {
    "EdenEast/nightfox.nvim",
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
          green = { base = "#33d17a", bright = "#57e389", dim = "#2ec27e" },
          yellow = { base = "#f8e45c", bright = "#f9f06b", dim = "#f6d32d" },
          blue = { base = "#3584e4", bright = "#62a0ea", dim = "#1c71d8" },
          magenta = { base = "#9141ac", bright = "#c061cb", dim = "#813d9c" },
          cyan = { base = "#b5835a", bright = "#cdab8f", dim = "#986a44" },
          orange = { base = "#ffa348", bright = "#ffbe6f", dim = "#ff7800" },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
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
