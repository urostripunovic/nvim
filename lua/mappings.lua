require "nvchad.mappings"

local map = vim.keymap.set

map({ "n", "t" }, "<A-i>", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
-- map({ "n", "t" }, "<A-i>", function()
--   require("nvchad.term").toggle { pos = "float", id = "floatGit", cmd = "lazygit" }
-- end, { desc = "Terminal Toggle Floating term" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i", "v", "n", "s" }, "<C-S>", "<cmd>wa<CR>", { desc = "save all files in directory" })
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<CR>", { desc = "save files" })

map("i", "jk", "<ESC>")

--- Move lines up/down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up with J in visual mode" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down with K in visual mode" })

-- map("t", "<ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

--- Pasting and yanking stuff
map("x", "<leader>p", [["_dP]], { desc = "Replace selection with default register without overwriting it" })
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy everything highlighted under the cursor" })
map("n", "<leader>Y", [["+Y]], { desc = "Copy the current line under the cursor" })
map(
  { "n", "v" },
  "<leader>d",
  [["_d]],
  { desc = "Delete to black hole register to avoid overwriting default register" }
)
--- Join two lines but keep the cursor position
map("n", "J", "mzJ`z")
--- Jump movement
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

--- Replace and edit all under the word or highlighted, check out frontend masters example
-- map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- map("n", "<leader><leader>", function()
--   vim.cmd "so"
-- end)

