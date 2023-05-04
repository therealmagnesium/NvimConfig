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

key.set("n", "<C-z>", ":u<CR>")
key.set("n", "<C-y>", "<C-r>")
key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")
------------------------------

--Files-----------------------
key.set("n", "<leader>wr", ":w<CR>")
key.set("n", "<leader>it", ":wq<CR>")
key.set("n", "<leader>xt", ":q!<CR>")

key.set("n", "<leader>so", ":so %<CR>")
------------------------------

--Nvim-Tree-------------------
key.set("n", "<C-n>", ":NvimTreeToggle<CR>")
------------------------------
