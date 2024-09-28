---------------
-- Autocmds --
---------------
local o, opt, bo, wo, fn = vim.o, vim.opt, vim.bo, vim.wo, vim.fn

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
