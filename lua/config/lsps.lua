-- Enable autocomplete for all the lsps
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("*", {
    capabilities = capabilities,
})

-- Get the path to the lsp config directory
local lsp_config_path = vim.fn.stdpath('config') .. '/lsp'

-- Scan for all LSP config files
local lsp_configs = vim.fn.glob(lsp_config_path .. '/*.lua', false, true)

-- Enable all the lsps in the lsp folder
for _, config_file in ipairs(lsp_configs) do
    local lsp_name = vim.fn.fnamemodify(config_file, ':t:r')

    vim.lsp.enable(lsp_name)
end

