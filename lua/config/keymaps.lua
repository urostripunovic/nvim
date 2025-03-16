-------------
-- Keymaps --
-------------
local map = vim.keymap.set

-- Leader --
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', '<M-b>', '<ESC>^i', { desc = 'move beginning of line' })
map('i', '<M-e>', '<End>', { desc = 'move end of line' })
map('i', '<M-h>', '<Left>', { desc = 'move left' })
map('i', '<M-l>', '<Right>', { desc = 'move right' })
map('i', '<M-j>', '<Down>', { desc = 'move down' })
map('i', '<M-k>', '<Up>', { desc = 'move up' })

map('n', 'j', 'gj')
map('n', 'k', 'gk')
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<Esc>', { desc = 'Leave insert mode' })

map({ 'n', 'v' }, '<M-q>', ':qa<CR>')
map('n', '<C-s>', ':w<CR>', { silent = true })
map({ 'i', 's' }, '<C-s>', '<Esc>:w<CR>', { silent = true })
map('x', '<C-s>', '<Esc>:w<CR>gv', { silent = true })

-- ahh windows how i've missed ya
map('n', '<BS>', 'X')
map('n', '<M-BS>', 'db')
map('x', 'v', '$h')

map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Global search and replace in buffer' })

-- terminal
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Window movement
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line up with J in visual mode' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line down with K in visual mode' })

map('n', 'J', 'mzJ`z', { desc = 'Join two lines but keep the cursor position' })
-- Jump movement
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', '``', '``zzzv')

-- Pasting and yanking stuff
map('x', '<leader>p', [["_dP]], { desc = 'Replace selection with default register without overwriting it' })
map({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Copy everything highlighted under the cursor' })
map('n', '<leader>Y', [["+Y]], { desc = 'Copy the current line under the cursor' })
map({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete to black hole register to avoid overwriting default register' })

--- vsco*e symbol rename ---
vim.keymap.set({ 'n', 'x' }, '<leader>r', function()
  -- when rename opens the prompt, this autocommand will trigger
  -- it will "press" CTRL-F to enter the command-line window `:h cmdwin`
  -- in this window I can use normal mode keybindings
  local cmdId
  cmdId = vim.api.nvim_create_autocmd({ 'CmdlineEnter' }, {
    callback = function()
      local key = vim.api.nvim_replace_termcodes('<C-f>', true, false, true)
      vim.api.nvim_feedkeys(key, 'c', false)
      vim.api.nvim_feedkeys('0', 'n', false)
      -- autocmd was triggered and so we can remove the ID and return true to delete the autocmd
      cmdId = nil
      return true
    end,
  })
  vim.lsp.buf.rename()
  -- if LPS couldn't trigger rename on the symbol, clear the autocmd
  vim.defer_fn(function()
    -- the cmdId is not nil only if the LSP failed to rename
    if cmdId then
      vim.api.nvim_del_autocmd(cmdId)
    end
  end, 500)
end, { desc = '[r]ename' })
