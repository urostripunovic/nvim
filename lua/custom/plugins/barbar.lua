return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  config = function()
    local map = vim.keymap.set
    require('barbar').setup {
      no_name_title = '[No Name]',
      insert_at_end = true,
      exclude_ft = { 'qf', 'rest_nvim_result' },
      maximum_length = 60,
      hide = { extensions = true },
      icons = { button = false },
    }

    map('n', '<M-w>', '<cmd>BufferClose<CR>')
    map('n', '<M-W>', '<cmd>BufferClose<CR><cmd>wincmd c<CR>')
    map('n', '<leader>bC', '<cmd>BufferClose<CR><cmd>wincmd c<CR>')
    map('n', '<leader><M-w>', '<cmd>BufferClose!<CR>')
    -- Buffer-picking mode
    map('n', '<C-Space>', '<cmd>BufferPick<CR>')
    map('n', '<leader>bd', '<cmd>BufferPickDelete<CR>')
    -- Sort automatically by...
    map('n', '<leader>bD', '<cmd>BufferOrderByDirectory<CR>')
    map('n', '<leader>bl', '<cmd>BufferOrderByLanguage<CR>')
    map('n', '<leader>bc', '<cmd>BufferClose<CR>')
    map('n', '<leader>br', '<cmd>BufferRestore<CR>')
    map('n', '<leader>bo', '<cmd>BufferCloseAllButVisible<CR>')
    map('n', '<leader>ba', '<cmd>BufferCloseAllButPinned<CR>')
    -- Move to previous/next
    map('n', '<M-l>', '<cmd>BufferNext<CR>')
    map('n', '<M-h>', '<cmd>BufferPrevious<CR>')
    map('n', '<leader><Tab>', '<cmd>BufferNext<CR>')
    map('n', '<leader><S-Tab>', '<cmd>BufferPrevious<CR>')
    -- Re-order to previous/next
    map('n', '<M-.>', '<cmd>BufferMoveNext<CR>')
    map('n', '<M-,>', '<cmd>BufferMovePrevious<CR>')
    -- Goto buffer in position...
    for i = 1, 8 do
      local mapping = '<M-' .. i .. '>'
      local buffer = '<cmd>BufferGoto ' .. i .. '<CR>'
      map('n', mapping, buffer)
    end
    map('n', '<M-9>', '<cm>BufferLast<CR>')
  end,
}
