vim.cmd('packadd packer.nvim')

return require('packer').startup(
    function()
        -- plugin manager
        use 'wbthomason/packer.nvim'

        -- treesitter
        use {'nvim-treesitter/nvim-treesitter'}

        -- lsp
        use 'neovim/nvim-lspconfig'

        -- lsp installer
        use 'williamboman/nvim-lsp-installer'

        -- autocompletion
        use {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/nvim-cmp'
        }

        -- autopairs
        use 'windwp/nvim-autopairs'

        -- comment
        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }

        -- telescope
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

        -- color scheme
        use 'morhetz/gruvbox'
        use 'drewtempelmeyer/palenight.vim'
    end)
