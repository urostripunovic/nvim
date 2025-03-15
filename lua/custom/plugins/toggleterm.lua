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
  end,
}
