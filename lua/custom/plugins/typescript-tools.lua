----------------------
-- TypeScript Tools --
----------------------
return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  ft = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact' },
  opts = {
    on_attach = function(client, bufnr)
      -- Disable formatting (use prettier instead, see `conform.lua`)
      -- client.server_capabilities.documentFormattingProvider = false
      -- client.server_capabilities.documentRangeFormattingProvider = false
      local root_dir = require('lspconfig').util.root_pattern { 'package.json', 'tsconfig.json' }
      local single_file_support = false
      local settings = {}

      local map = vim.keymap.set

      map('n', '<leader>lo', '<cmd>TSToolsOrganizeImports<CR>', { desc = 'LSP Organize imports' })
      map('n', '<leader>li', '<cmd>TSToolsAddMissingImports<CR>', { desc = 'LSP add missing imports' })
      map('n', '<leader>lf', '<cmd>TSToolsFixAll<CR>', { desc = 'LSP fix all errors' })
      map('n', '<leader>lu', '<cmd>TSToolsRemoveUnused<CR>', { desc = 'LSP remove unused' })
      map('n', '<leader>lr', '<cmd>TSToolsRenameFile<CR>', { desc = 'LSP rename file' })
      map('n', '<leader>lc', function()
        require('tsc').run()
      end, { desc = 'Type check project' })
    end,
  },
}
