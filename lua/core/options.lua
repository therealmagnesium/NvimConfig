local opt = vim.opt

--Basics--------------------
opt.number = true
opt.relativenumber = true

opt.wrap = false
opt.cursorline = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 10
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50
----------------------------

--Indenting-----------------
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
----------------------------

--Searching-----------------
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

--Appearance----------------
opt.syntax = "on"
opt.termguicolors = true
opt.background = "dark"
opt.splitright = true
opt.splitbelow = true
opt.clipboard:append("unnamedplus")
