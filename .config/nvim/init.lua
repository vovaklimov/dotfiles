require('settings')
require('plugins')

require('nvim-treesitter.configs').setup {
    ensure_installed = 'all',
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

vim.cmd('colorscheme gruvbox');

