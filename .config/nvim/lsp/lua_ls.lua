return {
  settings = {
    Lua = {
      hint = {enabled = true},
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
    },
  },
}
