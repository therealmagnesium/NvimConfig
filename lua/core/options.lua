vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guicursor = "" -- Fat cursor

-- Appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- Tab
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Indenting
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

-- Functionality
vim.opt.wrap = false
vim.opt.scrolloff = 12
vim.opt.updatetime = 50
vim.opt.foldmethod = "manual"
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
