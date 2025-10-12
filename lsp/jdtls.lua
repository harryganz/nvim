return {
    cmd = { "jdtls", "-data", vim.fn.stdpath("cache") .. "/jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") },
    file_types = { "java" },
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
            project = {
                referencedLibraries = {},
                outputPath = vim.fn.stdpath("cache") .. "/jdtls/bin",
            },
            saveActions = {
                organizeImports = true,
            }
        },
    },
}
