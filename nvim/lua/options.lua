vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.fileencoding = 'utf-8'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.opt.termguicolors = true
vim.o.guicursor = ""

vim.wo.nu = true
vim.wo.rnu = true

vim.o.showmode = false
vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100

vim.o.scrolloff = 10
vim.o.sidescrolloff = 5

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.bo.smartindent = true
vim.wo.wrap = false
vim.o.cursorline = true
vim.wo.signcolumn = "yes"

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = true
vim.bo.expandtab = true

vim.o.clipboard = "unnamedplus"

-- themes
vim.cmd('colorscheme gruvbox')
 -- vim.cmd('colorscheme nord')

-- hide netrw help menu
vim.cmd('let g:netrw_banner = 0')
vim.cmd('let g:netrw_browse_split = 2')

vim.cmd('hi! Normal ctermbg=NONE guibg=NONE')
vim.cmd('hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE')
