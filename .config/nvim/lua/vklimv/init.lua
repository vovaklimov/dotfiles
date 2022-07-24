require('vklimv.settings')
require('vklimv.plugins')
require('vklimv.telescope')

required_languages = { 'javascript',
                       'typescript',
                       'java',
                       'rust',
                       'lua',
                       'markdown',
                       'json',
                     }

require('nvim-treesitter.configs').setup {
    ensure_installed = required_languages,
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

vim.cmd('colorscheme gruvbox')

vim.g.mapleader = ' '

local remapUtils = require('vklimv.keymaps')
local nnoremap = remapUtils.nnoremap

nnoremap('<leader>ff', ':Telescope find_files<cr>')
nnoremap('<C-p>', ':Telescope git_files<cr>')

