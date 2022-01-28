require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = {}
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "css",
    "php",
    "json",
    "html",
  },
  autotag = {
      enable = true,
  },
  autopair = {
      enable = true,
  },
}

