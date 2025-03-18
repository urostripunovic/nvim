-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- configs
  require 'config.tsc',
  --
  require 'custom.plugins.vim-tmux-navigator',
  require 'custom.plugins.windows',
  require 'custom.plugins.notify',
  require 'custom.plugins.noice',
  require 'custom.plugins.alpha',
  require 'custom.plugins.smear-cursor',
  require 'custom.plugins.treesitter-context',
  require 'custom.plugins.action-preview',
  require 'custom.plugins.smartsplit',
  require 'custom.plugins.barbar',
  require 'custom.plugins.blame',
  require 'custom.plugins.scrollbar-nvim',
  require 'custom.plugins.lsp',
  require 'custom.plugins.toggleterm',
  require 'custom.plugins.guess-indent',
  require 'custom.plugins.conform',
  require 'custom.plugins.term-edit',
  require 'custom.plugins.whichkey',
  require 'custom.plugins.git-conflict',
  require 'custom.plugins.trouble',
  require 'custom.plugins.typescript-tools',
  require 'custom.plugins.garbage-day',
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
