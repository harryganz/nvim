return {
    "neovim/nvim-lspconfig",
    dependencies = { 
        "hrsh7th/nvim-cmp", 
        "hrsh7th/cmp-nvim-lsp", 
    }, 
    config = function()
        local lspConfig = require("lspconfig")
        -- Autocomplete --
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        
        -- LSP Servers --
        lspConfig.gopls.setup({
            capabilities = capabilities,
        })
    end
}
