-- space as leader
vim.g.mapleader = ' '

-- variables 
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- save
map('n','<leader>w',':w<CR>',opts)

-- save and quit
map('n','<leader>q',':wq<CR>',opts)

-- navigation between splits
map('n','<leader>h',':wincmd h<CR>',opts)
map('n','<leader>j',':wincmd j<CR>',opts)
map('n','<leader>k',':wincmd k<CR>',opts)
map('n','<leader>l',':wincmd l<CR>',opts)

-- escape
map('i','jk','<ESC>',opts)

-- indent
map('v','<','<gv',opts)
map('v','>','>gv',opts)

-- open netrw file explorer
map('n','<leader>fe',':wincmd v<bar> :Ex <bar> :vertical resize 30<CR>',opts)

-- fuzzy finding
map('n','<C-p>',':Telescope find_files<CR>',opts)
