vim.opt.shortmess = 'c'
vim.opt.fileencoding  =  'utf-8'
vim.opt.termguicolors  =  true
vim.opt.whichwrap = 'b,s,<,>,[,],h,l'
vim.opt.signcolumn = "yes"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false
vim.opt.hlsearch = false
vim.opt.incsearch = false
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- colorscheme
vim.opt.background = "dark"
vim.cmd('colorscheme gruvbox')
-- vim.cmd('colorscheme palenight')

-- hide netrw help menu
vim.cmd('let g:netrw_banner = 0')

-- for transparent background
vim.cmd('hi! Normal ctermbg=NONE guibg=NONE')
vim.cmd('hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE')
