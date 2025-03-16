-------------
-- Windows --
-------------
return {
  'anuvyklack/windows.nvim',
  event = 'WinEnter',
  dependencies = 'anuvyklack/middleclass',
  config = function()
    require('windows').setup {
      animation = { enable = false },
      ignore = {
        buftype = { 'quickfix', 'help' },
        filetype = { '', 'toggleterm', 'neotest-summary', 'blame' },
      },
    }

    local map = vim.keymap.set
    local commands = require 'windows.commands'

    map('n', '<C-w><C-f>', commands.maximize, { desc = 'Toggle maximized window' })
  end,
}
