return {
  -- 'calvinludwig/mago.nvim',
  dir = '/home/me/code/personal/mago.nvim',
  ft = 'php',
  opts = {
    lint_on_save = true,
    config = function()
      require('lspconfig').intelephense.setup {}
    end,
  },
}
