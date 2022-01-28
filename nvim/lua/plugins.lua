vim.cmd('packadd packer.nvim')

return require('packer').startup(
    function()
        --plugin manager
        use 'wbthomason/packer.nvim'

        -- color scheme
        use 'morhetz/gruvbox'
        use 'arcticicestudio/nord-vim'
    
        -- autoparis
        use 'windwp/nvim-autopairs'
        use {'windwp/nvim-ts-autotag'}
    
        -- treesitter
        use {'nvim-treesitter/nvim-treesitter',run = "TSUpdate"}
    
        -- telescope
        use{
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/plenary.nvim'}}
        }
    
        -- lsp
        use 'neovim/nvim-lspconfig'
    
        -- autocompletion
        use'hrsh7th/cmp-nvim-lsp'
        use'hrsh7th/cmp-buffer'
        use'hrsh7th/nvim-cmp'
    
        -- color highlight
        use 'norcalli/nvim-colorizer.lua'
        
        -- snippets
        use 'hrsh7th/vim-vsnip'

        -- indentation guides
        use "lukas-reineke/indent-blankline.nvim"

    end
)
