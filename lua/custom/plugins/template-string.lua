-------------------------------
-- Template string converter --
-------------------------------
return {
  'axelvc/template-string.nvim',
  config = function()
    require('template-string').setup {
      filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'svelte' },
      remove_template_string = true,
      restore_quotes = { normal = '"' },
    }
  end,
}
