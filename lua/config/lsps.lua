local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("*", {
    capabilities = capabilities,
})

-- Get the path to the lsp config directory
local lsp_config_path = vim.fn.stdpath('config') .. '/lsp'

-- Scan for all LSP config files
local lsp_configs = vim.fn.glob(lsp_config_path .. '/*.lua', false, true)

-- Load each LSP config and set up autocommands based on file_types
for _, config_file in ipairs(lsp_configs) do
    local lsp_name = vim.fn.fnamemodify(config_file, ':t:r')
    local config = dofile(config_file)

    if config.file_types then
        -- Create an autocommand group for this LSP
        local group = vim.api.nvim_create_augroup('lsp_' .. lsp_name, { clear = true })

        -- Enable the LSP when a file of the specified type is opened
        vim.api.nvim_create_autocmd('FileType', {
            group = group,
            pattern = config.file_types,
            callback = function()
                vim.lsp.enable(lsp_name)
            end,
        })
    end
end


