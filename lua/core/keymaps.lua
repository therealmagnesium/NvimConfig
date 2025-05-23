-- Normal mode
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-q>", ":wq<CR>")

vim.keymap.set("n", "<leader>fa", "za")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-z>", "u")

vim.keymap.set("n", "<C-x>", '"+y')

-- Insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-s>", "<C-c>:w<CR>")
vim.keymap.set("i", "<C-q>", "<C-c>:wq<CR>")
vim.keymap.set("i", "<C-z>", "<C-c>u")

-- Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-x>", '"+y')
vim.keymap.set("x", "<leader>p", '"_dP')
