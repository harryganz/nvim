vim.lsp.config('yaml-language-server', {
    cmd = { 'yaml-language-server', '--stdio' },
    root_markers = { ".git" },
    file_types = { "yaml", "yml" },
    settings = {
        yaml = {
            validate = true,
            schemaStore = {
                enable = true,
            },
            hover = true,
            completion = true,
        }
    },
})
