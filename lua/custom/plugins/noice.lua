return {
  'folke/noice.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
  config = function()
    local noice = require 'noice'
    local map = vim.keymap.set

    noice.setup {
      lsp = {
        progress = {
          enabled = false,
        },
        hover = {
          -- Disable "no information available" popup which is really annoying
          -- when using multiple servers
          silent = true,
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      cmdline = {
        format = {
          search_up = { kind = 'search', pattern = '^%?', icon = ' 󰜷', lang = 'regex' },
          search_down = { kind = 'search', pattern = '^/', icon = ' 󰜮', lang = 'regex' },
          cmdline = {
            opts = {
              buf_options = { filetype = 'NoiceCommandline' },
            },
          },
        },
      },
    }

    require('telescope').load_extension 'noice'
    map('n', 'gl', function()
      noice.cmd 'last'
    end, { desc = 'Show last message in a floating window' })
    map('n', 'gm', '<cmd>Telescope noice<CR>', { desc = 'Show messages in a floating window' })
  end,
}
