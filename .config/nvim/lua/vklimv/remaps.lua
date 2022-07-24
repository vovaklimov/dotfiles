local remapUtils = require('vklimv.remap-utils')
local nnoremap = remapUtils.nnoremap

-- Telescope
local telescope = require('telescope.builtin')

nnoremap('<leader>ff', function() telescope.find_files({ hidden = true }) end)
nnoremap('<C-p>', function() telescope.git_files({ show_untracked = true }) end)

