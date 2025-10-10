return {
    cmd = { 'yaml-language-server', '--stdio' },
    root_markers = { ".git" },
    file_types = { "yaml", "yml" },
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
