----------------
-- Toggleterm --
----------------
return {
  'akinsho/toggleterm.nvim',
  config = function()
    local toggleterm = require 'toggleterm'

    toggleterm.setup {
      open_mapping = '<M-\\>', -- '<c-\\>', -- fuck you windows
      direction = 'vertical',
      insert_mappings = false,
      persist_mode = true,
      shading_factor = -10,
      float_opts = {
        border = 'curved',
        winblend = 4,
        highlights = {
          background = 'NormalFloat',
          border = 'TelescopeBorder',
        },
      },
      size = vim.o.columns * 0.25,
    }
    -- vim.keymap.set('n', '<M-h>', function()
    --   local size = vim.o.lines * 0.3
    --   local cwd = vim.fn.getcwd()
    --   vim.cmd('ToggleTerm size=' .. size .. ' dir=' .. cwd .. ' direction=horizontal name=test')
    -- end)
    -- vim.keymap.set('n', '<M-v>', function()
    --   local size = vim.o.columns * 0.3
    --   local cwd = vim.fn.getcwd()
    --   vim.cmd('ToggleTerm size=' .. size .. ' dir=' .. cwd .. ' direction=vertical name=test')
    -- end)
  end,
}
