vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    -- Packer itself
    use('wbthomason/packer.nvim')

    use('gruvbox-community/gruvbox')
    
    use({'nvim-treesitter/nvim-treesitter'})
    
    use('nvim-lua/popup.nvim')
    
    use({'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    })

    -- Snippets
    use('saadparwaiz1/cmp_luasnip')
    use('L3MON4D3/LuaSnip')

    -- LSP
    use('neovim/nvim-lspconfig')

    -- Completions
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')

end)

