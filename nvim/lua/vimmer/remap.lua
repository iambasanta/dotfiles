vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

-- move selected
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")

-- cursor in the middle
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- search term stay in middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- paste
keymap.set("x", "<leader>p", [["_dP]])

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

-- search and replace
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- create an executable file
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
