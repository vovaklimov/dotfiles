local lspconfig = require('lspconfig')
local nnoremap = require('vklimv.remap-utils').nnoremap
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local opts = { silent = true }
nnoremap('<leader>e', vim.diagnostic.open_float, opts)
nnoremap('[d', vim.diagnostic.goto_prev, opts)
nnoremap(']d', vim.diagnostic.goto_next, opts)
nnoremap('<leader>q', vim.diagnostic.setloclist, opts)

local onAttach = function(client, bufnr)
    -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v.lua.vim.lsp.omnifunc')
    -- Key mappings
    local bufopts = { buffer = bufnr, silent = true }

    nnoremap('K', vim.lsp.buf.hover, bufopts)        
    nnoremap('<C-k>', vim.lsp.buf.signature_help, bufopts)
    nnoremap('gd', vim.lsp.buf.definition, bufopts)        
    nnoremap('gi', vim.lsp.buf.implementation, bufopts)
    nnoremap('<leader>D', vim.lsp.buf.type_definition, bufopts)
    nnoremap('<leader>rn', vim.lsp.buf.rename, bufopts)
    nnoremap('<leader>ca', vim.lsp.buf.code_action, bufopts)
    nnoremap('gr', vim.lsp.buf.references, bufopts)
    nnoremap('<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)       
end

local lsp_flags = {
    debaunce_text_changes = 150,
}

lspconfig.rust_analyzer.setup {
    on_attach = onAttach,
    flags = lsp_flags,
    capabilities = capabilities,
}

