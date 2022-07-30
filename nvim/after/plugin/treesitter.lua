require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c","cpp","go","lua","html","css","javascript","php","typescript","dockerfile","json","yaml","markdown"},

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
