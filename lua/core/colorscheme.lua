local status, theme = pcall(require, "catppuccin")

if not status then
    print("Colorscheme wasn't found!")
    return
end

theme.setup({
    flavour = "Mocha"
})

vim.cmd.colorscheme "catppuccin"
