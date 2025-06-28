-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = { 'sql' },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd('ExitPre', {
  group = vim.api.nvim_create_augroup('Exit', { clear = true }),
  command = 'set guicursor=a:hor20',
  desc = 'Set cursor back to underline when leaving Neovim.',
})
