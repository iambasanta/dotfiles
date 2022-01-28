"---------SETS----------
syntax on
set encoding=UTF-8
set shortmess+=c
set nu
set rnu
set hidden
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set cursorline
set nowrap
set smartcase
set nobackup
set undofile
set undodir=~/.vim/undodir
set incsearch
set noswapfile
set nohlsearch
set noshowmode
set scrolloff=10
set laststatus=2
set background=dark

"----------STATUS-LINE----------
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]
set statusline+=\ %l/%L
set statusline+=\ [%c]

"show git branch on statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

"netrw file explorer
let g:netrw_banner =0
let g:netrw_browse_split =2

"----------PLUGINS----------
call plug#begin('~/.vim/plugged')

    "coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    "color schemes/themes
    "Plug 'arcticicestudio/nord-vim'
    "Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'

    "undotree
    Plug 'mbbill/undotree'

    "close tags
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'

    "autopairs
    Plug 'windwp/nvim-autopairs'

    "preview of colors
    Plug 'ap/vim-css-color'

    "git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'

    "indentation
    Plug 'Yggdroot/indentLine'

    "commentary
    Plug 'tpope/vim-commentary'

    "goyo
    Plug 'junegunn/goyo.vim'

call plug#end()

"Theme
syntax enable
"colorscheme nord
"colorscheme onedark
colorscheme gruvbox

"transparent background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE



"----------KEY-MAPPINGS----------
let mapleader = " "

"save and Quit
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>w :w<CR>

"escape
inoremap jk <Esc>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>fe :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"search files
nnoremap <C-p> :Files<cr>

"compile and run c++ code
nnoremap <f5> :w <bar> !g++ -std=c++11 % -o %:r && ./%:r <CR>

"open files in browser
nnoremap <leader>of :exe ':silent !firefox %'<CR>
nnoremap <leader>oc :exe ':silent !chromium-browser %'<CR>

"indent
vnoremap < <gv
vnoremap > >gv

"mappings for presentation mode
autocmd BufNewFile,BufRead *.vpm call SetVimPresentationMode()
function SetVimPresentationMode()
    noremap <buffer> <Right> :n<CR>
    noremap <buffer> <Left> :N<CR>

    if !exists('#goyo')
        Goyo
    endif
endfunction

"tab completion
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"make <CR> auto-select the first completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"rename
nmap <leader>rn <Plug>(coc-rename)

"format 
xmap <leader>fs  <Plug>(coc-format-selected)
nmap <leader>fs  <Plug>(coc-format-selected)

"diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>

"mappings for git
nmap <leader>gs :G<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

"behave vim
nnoremap Y y$

"moving text
vnoremap J :m '>+1'<CR>gv=gv
vnoremap K :m '>-2'<CR>gv=gv
