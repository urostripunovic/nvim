local api = vim.api

--- Remove all trailing whitespace on save
-- local TrimWhiteSpaceGrp = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
-- api.nvim_create_autocmd("BufWritePre", {
--   command = [[:%s/\s\+$//e]],
--   group = TrimWhiteSpaceGrp,
-- })

--- Add new line to the end of the file on save
local NewLineOnSaveGrp = api.nvim_create_augroup("NewLineOnSaveGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    local n_lines = vim.api.nvim_buf_line_count(0)
    local last_nonblank = vim.fn.prevnonblank(n_lines)
    if last_nonblank <= n_lines then
      vim.api.nvim_buf_set_lines(0, last_nonblank, n_lines, true, { "" })
    end
  end,
  group = NewLineOnSaveGrp,
})
