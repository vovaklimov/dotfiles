vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    -- Packer itself
    use 'wbthomason/packer.nvim'

    use { 'gruvbox-community/gruvbox' }
    
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use { 'sbdchd/neoformat' }

end)

