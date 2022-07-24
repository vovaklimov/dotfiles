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



local remapUtils = require('vklimv.keymaps')
local nnoremap = remapUtils.nnoremap

nnoremap('<leader>ff', function()
    require('telescope.builtin').find_files({ hidden = true })
end)

nnoremap('<C-p>', function()
    require('telescope.builtin').git_files({ show_untracked = true })
end)
