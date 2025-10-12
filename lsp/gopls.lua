 return {
    cmd = { "gopls" },
    file_types = { "go" },
    root_markers = { "go.work", "go.mod", ".git" },
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
}
