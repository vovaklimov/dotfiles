local required_languages = {'javascript',
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
