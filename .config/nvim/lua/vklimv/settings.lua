-- Aliases
local opt = vim.opt -- vim options
local g = vim.g -- global editor options

opt.hlsearch = false
opt.incsearch = true

opt.errorbells = false

opt.termguicolors = true

opt.relativenumber = true
opt.number = true

opt.scrolloff = 8

opt.expandtab = true
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.signcolumn = 'yes'

g.mapleader = ' ' 

local colorscheme = 'gruvbox' 
vim.cmd('colorscheme ' .. colorscheme)
