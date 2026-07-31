-- Leader must be set before lazy.nvim loads any plugins that use it
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath("state") .. "/undodir"
opt.undofile = true -- persistent undo, makes undotree actually useful across sessions

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes" -- keeps gitsigns/diagnostics from shifting your text left/right

opt.updatetime = 250
