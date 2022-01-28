vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.fileencoding = 'utf-8'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

vim.o.nu = true
vim.o.rnu = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.autoindent = true
vim.o.smartindent = true

vim.o.incsearch = true
vim.o.hlsearch = false

vim.o.cursorline = true
vim.o.signcolumn = "yes"

vim.o.showmode = false
vim.o.showtabline = 0

vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100

vim.o.splitbelow = true

vim.o.scrolloff = 10
vim.wo.wrap = false

vim.opt.termguicolors = true

vim.o.clipboard = "unnamedplus"

-- Theme
vim.cmd('colorscheme gruvbox')
-- vim.cmd('colorscheme nord')

vim.cmd('let g:netrw_banner = 0')
vim.cmd('let g:netrw_browse_split = 3')
