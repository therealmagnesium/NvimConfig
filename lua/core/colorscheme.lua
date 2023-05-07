local status, _ = pcall(require, "material")

if not status then
    print("Colorscheme wasn't found!")
    return
end

require('material.functions').change_style("deep ocean")
vim.cmd.colorscheme "material"
