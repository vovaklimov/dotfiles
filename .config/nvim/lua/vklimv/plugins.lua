vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    -- Packer itself
    use('wbthomason/packer.nvim')

    use('gruvbox-community/gruvbox')
    
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

    use('sbdchd/neoformat')
    
    use('nvim-lua/popup.nvim')
    
    use({'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    })

    -- LSP
    use('neovim/nvim-lspconfig')
    use({'hrsh7th/cmp-nvim-lsp',
        requires = {
            {'hrsh7th/nvim-cmp'}
        }
    })

end)

