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

        lspConfig.pyright.setup({
            capabilities = default_capabilities,
        })

        lspConfig.jdtls.setup({
            init_options = {
                settings = {
                    java = {
                        home = vim.fn.getenv("JAVA_HOME"),
                        eclipse = {
                            downloadSources = true,
                        },
                        maven = {
                            downloadSources = true,
                        },
                        sources = {
                            organizeImports = true,
                        },
                    }
                },
            },
        })
    end,
}
