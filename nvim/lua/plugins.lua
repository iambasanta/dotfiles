vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    -- plugin manager
    use "wbthomason/packer.nvim"

    -- colorschemes
    use "folke/tokyonight.nvim"

    -- nvim-treesitter
    use {
        "nvim-treesitter/nvim-treesitter", 
        run = ":TSUpdate"
    }

    -- telescope
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        requires = { {"nvim-lua/plenary.nvim"}}
    }

    -- lsp
    use "neovim/nvim-lspconfig"

    -- auto-completion
    use {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path"
    }

    -- add pictograms
    use "onsails/lspkind.nvim"

    -- autopairs
    use "windwp/nvim-autopairs"

    -- snippets
    use{
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip"
    }

    -- commenter
    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    }

end)
