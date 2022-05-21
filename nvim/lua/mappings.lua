
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- save 
map('n','<leader>w',':w<CR>',opts)

-- save and quit
map('n','<leader>q',':wq<CR>',opts)

-- escape
map('i','jk','<ESC>',opts)

-- navigation bewteen splits
map('n','<leader>h',':wincmd h<CR>',opts)
map('n','<leader>j',':wincmd j<CR>',opts)
map('n','<leader>k',':wincmd k<CR>',opts)
map('n','<leader>l',':wincmd l<CR>',opts)

-- open netrw file explorer
map('n','<leader>fe',':wincmd v<bar> :Ex <bar> :vertical resize 30<CR>',opts)

-- fuzzy finding
map('n','<C-p>',':Telescope find_files<CR>',opts)
