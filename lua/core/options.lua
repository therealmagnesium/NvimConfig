local opt = vim.opt

--Basics--------------------
opt.number = true
opt.wrap = false
opt.cursorline = true
opt.syntax = "on"
----------------------------

--Indenting-----------------
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
----------------------------

--Searching-----------------
opt.ignorecase = true
opt.smartcase = true

--Appearance----------------
opt.termguicolors = true
opt.background = "dark"
opt.splitright = true
opt.splitbelow = true
opt.clipboard:append("unnamedplus")
