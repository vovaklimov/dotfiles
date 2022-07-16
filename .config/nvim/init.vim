set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set noerrorbells
set nohlsearch
set incsearch

" Plugins
call plug#begin()
" Color scheme
Plug 'gruvbox-community/gruvbox'
" Status line
Plug 'nvim-lualine/lualine.nvim'
" Code formatter
Plug 'sbdchd/neoformat'
call plug#end()

colorscheme gruvbox

lua << END
require('lualine').setup {
    options = {
        theme = 'gruvbox',
        icons_enabled = true
    }
}
END

