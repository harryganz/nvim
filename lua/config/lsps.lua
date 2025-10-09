local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("*", {
    capabilities = capabilities,
})


vim.lsp.enable('gopls')
vim.lsp.enable('yaml-language-server')


