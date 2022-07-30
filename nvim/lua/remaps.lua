local Remap = require("keymaps")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local vnoremap = Remap.vnoremap

-- open netrw file explorer
nnoremap("<leader>fe", "<cmd>Vex<CR>")

-- save file
nnoremap("<leader>w", "<cmd>w<CR>")

-- save ans quit file
nnoremap("<leader>q", "<cmd>wq<CR>")

-- format file
nnoremap("<leader>ff", "<cmd> lua vim.lsp.buf.formatting_seq_sync()<CR>")

-- navigation between window splits
nnoremap("<leader>h","<cmd>wincmd h<CR>")
nnoremap("<leader>j","<cmd>wincmd j<CR>")
nnoremap("<leader>k","<cmd>wincmd k<CR>")
nnoremap("<leader>l","<cmd>wincmd l<CR>")

-- escape insert mode
inoremap("jk","<ESC>")

-- make executable file
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>",{ silent = true })

-- open fuzzy finder using telescope
nnoremap("<C-p>","<cmd>Telescope find_files<CR>")

-- move selected text
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- build and execute c or c++ sourcecode
local lang_maps = {
    c = { build = "gcc % -o %:r", exec = "./%:r" },
    cpp = { build = "g++ % -o %:r", exec = "./%:r" },
}

for lang, src in pairs(lang_maps) do
    if src.build ~= nil then
        vim.api.nvim_create_autocmd(
        "FileType",
        { command = "nnoremap <leader>b :!" .. src.build .. "<CR>", pattern = lang }
        )
    end
    vim.api.nvim_create_autocmd(
    "FileType",
    { command = "nnoremap <leader>e :split<CR>:terminal " .. src.exec .. "<CR>", pattern = lang }
    )
end
