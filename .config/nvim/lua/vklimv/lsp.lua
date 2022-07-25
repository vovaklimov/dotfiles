local lspconfig = require('lspconfig')
local nnoremap = require('vklimv.remap-utils').nnoremap

local opts = { silent = true }
nnoremap('<leader>e', vim.diagnostic.open_float, opts)
nnoremap('[d', vim.diagnostic.goto_prev, opts)
nnoremap(']d', vim.diagnostic.goto_next, opts)
nnoremap('<leader>q', vim.diagnostic.setloclist, opts)

local onAttach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Key mappings
    local bufopts = { buffer = bufnr, silent = true }

    nnoremap('K', vim.lsp.buf.hover, bufopts)        
    nnoremap('<C-k>', vim.lsp.buf.signature_help, bufopts)
    nnoremap('gd', vim.lsp.buf.definition, bufopts)        
    nnoremap('gi', vim.lsp.buf.implementation, bufopts)
    nnoremap('<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    nnoremap('<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    nnoremap('<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    nnoremap('<leader>D', vim.lsp.buf.type_definition, bufopts)
    nnoremap('<leader>rn', vim.lsp.buf.rename, bufopts)
    nnoremap('<leader>ca', vim.lsp.buf.code_action, bufopts)
    nnoremap('gr', vim.lsp.buf.references, bufopts)
    nnoremap('<leader>f', vim.lsp.buf.formatting, bufopts)       
end

lspconfig.tsserver.setup {
    on_attach = onAttach,
}

lspconfig.rls.setup {
    settings = {
        rust = {
        }
    },
    on_attach = onAttach,
}

