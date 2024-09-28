------------------
-- Git conflict --
------------------
return {
  'akinsho/git-conflict.nvim',
  version = '*', -- `main` is unstable
  event = 'VeryLazy',
  config = function()
    local map = vim.keymap.set

    ---@diagnostic disable-next-line: missing-fields
    require('git-conflict').setup {
      default_mappings = false,
      disable_diagnostics = true,
    }

    map('n', '<M-co>', '<Plug>(git-conflict-ours)', { desc = 'Git conflict take ours' })
    map('n', '<M-ct>', '<Plug>(git-conflict-theirs)', { desc = 'Git conflict take theirs' })
    map('n', '<M-cb>', '<Plug>(git-conflict-both)', { desc = 'Git conflict take both' })
    map('n', '<M-c0>', '<Plug>(git-conflict-none)', { desc = 'Git conflict take none' })
    map('n', ']x', '<Plug>(git-conflict-next-conflict)', { desc = 'Next conflict' })
    map('n', '[x', '<Plug>(git-conflict-prev-conflict)', { desc = 'Previous conflict' })
  end,
}
