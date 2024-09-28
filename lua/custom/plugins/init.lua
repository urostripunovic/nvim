-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require 'custom.plugins.alpha',
  require 'custom.plugins.lsp',
  require 'custom.plugins.toggleterm',
  require 'custom.plugins.conform',
  require 'custom.plugins.git-conflict',
  require 'custom.plugins.telescope',
  require 'custom.plugins.cmp',
  require 'custom.plugins.todocomments',
  require 'custom.plugins.mini',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.lastplace',
  require 'custom.plugins.template-string',
  require 'custom.themes.tokyonight', -- write code to switch between themes
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',
  require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}