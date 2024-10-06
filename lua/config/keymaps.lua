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

map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<Esc>', { desc = 'Leave insert mode' })

map({ 'n', 'v' }, '<M-q>', ':qa<CR>')
map('n', '<C-s>', ':w<CR>', { silent = true })
map({ 'i', 's' }, '<C-s>', '<Esc>:w<CR>', { silent = true })
map('x', '<C-s>', '<Esc>:w<CR>gv', { silent = true })

-- ahh windows
map('n', '<BS>', 'X')
map('n', '<M-BS>', 'db')

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
