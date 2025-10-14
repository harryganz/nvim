return {
    cmd = { 'yaml-language-server', '--stdio' },
    root_markers = { ".git" },
    filetypes = { "yaml", "yml" },
    settings = {
        yaml = {
            schemaStore = {
                enable = true,
            },
            hover = true,
            completion = true,
        }
    },
}
