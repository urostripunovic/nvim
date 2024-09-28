-------------
-- Options --
-------------
local opt, o, g, exists = vim.opt, vim.o, vim.g, vim.fn.exists

opt.mouse = 'a'

-- General --
o.showmode = false -- Don't write out `--INSERT--`, etc.
o.linebreak = true -- Don't break lines in the middle of a word
opt.spelllang = { 'en', 'sv' }

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

-- Set to true if you have a Nerd Font installed and selected in the terminal
-- vim.g.have_nerd_font = true
opt.undofile = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
o.updatetime = 500

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true -- Case insensitive searching
o.smartcase = true -- Except for when searching in CAPS
-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Lines and cursor --
o.number = true
o.relativenumber = true
o.cursorline = true -- Cursor highlighting
o.smoothscroll = true -- Scroll screen wrapped lines visual line by line
o.scrolloff = 10 -- Cursor margin
o.conceallevel = 2 -- Hide concealed characters completely
o.breakindent = true -- Respect indent when line wrapping
opt.cpoptions:remove '_' -- Makes cw/cW include trailing whitespace

-- Indent/ special characters --
o.expandtab = true -- Use spaces for indentation
o.shiftwidth = 2 -- Width of indentation
o.tabstop = 4 -- Width of <Tab> characters
o.shiftround = true -- Round indent to multiple of shiftwdith
opt.cinkeys:remove '0#' -- Indent lines starting with `#`
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
o.list = false -- Disabled by default
vim.o.listchars = 'tab:󱦰 ,space:·,nbsp:,eol:↵'
opt.fillchars = {
  diff = ' ', -- Cleaner deleted lines in diff
  eob = ' ', -- Don't show `~` at end of buffer
}
