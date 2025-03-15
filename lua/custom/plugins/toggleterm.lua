----------------
-- Toggleterm --
----------------
return {
  'akinsho/toggleterm.nvim',
  config = function()
    local toggleterm = require 'toggleterm'
    local map = vim.keymap.set

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
    local function set_terminal_keymaps()
      local opts = { buffer = 0 }
      map('t', '<esc>', [[<C-\><C-n>]], { buffer = true })
      map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      map('t', '<C-w>', [[<C-\><C-n><C-w>]], { buffer = true })
    end

    vim.api.nvim_create_autocmd('TermOpen', {
      pattern = 'term://*toggleterm#*',
      callback = function()
        set_terminal_keymaps()
      end,
    })
  end,
}
