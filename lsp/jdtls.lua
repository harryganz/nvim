return {
    cmd = { "jdtls", "-data", vim.fn.stdpath("cache") .. "/jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") },
    filetypes = { "java" },
    root_markers = { "pom.xml", "build.gradle.kts", "build.gradle.groovy", ".git" },
    settings = {
        java = {
            import = {
                gradle = {
                    enabled = true,
                },
                maven = {
                    enabled = true,
                },
            },
            saveActions = {
                organizeImports = true,
            }
        },
    },
}
