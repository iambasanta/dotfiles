require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
    indent = {
        enable = true
    },
    ensure_installed = {
        "c",
        "css",
        "dockerfile",
        "go",
        "html",
        "json",
        "javascript",
        "lua",
        "php",
        "yaml",
        "bash",
    },
    autotag = {
        enable = true,
    },
    autopair = {
        enable = true,
    },
}

-- vim.opt.foldmethod= "expr"
-- vim.opt.foldexpr="nvim_treesitter#foldexpr()"
