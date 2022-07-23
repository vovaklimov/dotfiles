local M = {}

local function bind(mode, outerOpts)
    local outerOpts = outerOpts or { noremap = true }

    return function(lhs, rhs, opts)
        --[[opts = vim.tbl_extend('force',
            outerOpts,
            opts or {},
        ) ]]--

        vim.keymap.set(mode, lhs, rhs, opts)
    end
end

M.nmap = bind('n', { noremap = false })
M.nnoremap = bind('n')

return M

