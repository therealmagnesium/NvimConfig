local g = vim.g
local key = vim.keymap

g.mapleader = " "

--General---------------------
key.set("n", "<leader>+", "<C-a>")
key.set("n", "<leader>-", "<C-x>")

key.set("n", "<leader>nh", ":nohl<CR>")
key.set("n", "<leader>pv", ":Ex<CR>")

key.set("n", "<leader>wv", "<C-w>v")
key.set("n", "<leader>wh", "<C-w>s")
key.set("n", "<leader>we", "<C-w>=")
key.set("n", "<leader>wx", ":close<CR>")

key.set("n", "<leader>u", ":u<CR>")
key.set("n", "<leader>r", "<C-r>")

key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

key.set("n", "<C-z>", "<nop>") 
key.set("i", "<C-z>", "<nop>")
key.set("x", "<leader>p", "\"_dp")
------------------------------

--Files-----------------------
key.set("n", "<leader>wr", ":w<CR>")
key.set("n", "<leader>gs", ":wq<CR>")
key.set("n", "<leader>gn", ":q!<CR>")

key.set("n", "<leader>rs", ":so %<CR>")
------------------------------

--Nvim-Tree-------------------
key.set("n", "<C-n>", ":NvimTreeToggle<CR>")
------------------------------
