vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

-- save and quit
keymap.set("n", "<Leader>w", ":w<CR>")
keymap.set("n", "<Leader>q", ":wq<CR>")

-- open netrw file explorer
keymap.set("n", "<Leader>fe", ":wincmd v<bar> :Ex <bar> :vertical resize 30<CR>")

-- splits navigation
keymap.set("n", "<Leader>h", ":wincmd h<CR>")
keymap.set("n", "<Leader>j", ":wincmd j<CR>")
keymap.set("n", "<Leader>k", ":wincmd k<CR>")
keymap.set("n", "<Leader>l", ":wincmd l<CR>")

-- close current split
keymap.set("n", "<Leader>cs", ":close<CR>")

-- open telescope for fuzzy finding
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<Leader>fs", "<cmd>Telescope grep_string<CR>")
