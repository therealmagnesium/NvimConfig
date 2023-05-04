local setup, nvimtree = pcall(require, "nvim-tree")
local g = vim.g

if not setup then
    return
end

g.loaded = 1
g.loaded_netrwPlugin = 1

nvimtree.setup()



