-----------
-- Noice --
-----------

return {
  'folke/noice.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify', 'hrsh7th/nvim-cmp' },
  config = function()
    local noice = require 'noice'
    local map = vim.keymap.set

    noice.setup {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
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
