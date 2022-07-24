local M = {}

local function bind(mode, outerOpts)
    local outerOpts = outerOpts or { noremap = true }

    return function(lhs, rhs, opts)
        vim.keymap.set(mode, lhs, rhs, opts)
    end
end

M.nmap = bind('n', { noremap = false })
M.nnoremap = bind('n')

return M

