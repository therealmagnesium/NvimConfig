local lsp = require("lsp-zero").preset({})
local cfg = require("lspconfig")

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-y>"] = cmp.mapping.confirm({select = true}),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cfg.clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"clangd"},
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    root_dir = cfg.util.root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
    ),
    single_file_support = true 
})

lsp.setup()
