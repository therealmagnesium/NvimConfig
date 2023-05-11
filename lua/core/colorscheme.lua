local status, _ = pcall(require, "catppuccin")

function ColorAll()
    if not status then
        print("Colorscheme wasn't found!")
        return
    end

    vim.cmd.colorscheme "catppuccin"

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", {bg = "none" })

    require("catppuccin").setup({
        transparent_background = false 
    })
end

ColorAll()
