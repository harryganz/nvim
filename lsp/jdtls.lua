return {
    cmd = {
        "jdtls",
        "-data", vim.fn.stdpath("cache") .. "/jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t"),
        "-configuration", vim.fn.stdpath("cache") .. "/jdtls/config",
    },
    filetypes = { "java" },
    root_markers = { "pom.xml", "build.gradle.kts", "build.gradle", "build.gradle.groovy", "settings.gradle", ".git" },
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
            },
            completion = {
                favoriteStaticMembers = {
                    "org.junit.jupiter.api.Assertions.*",
                    "org.junit.Assert.*",
                    "org.mockito.Mockito.*",
                    "org.mockito.ArgumentMatchers.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                },
                filteredTypes = {
                    "com.sun.*",
                    "io.micrometer.shaded.*",
                    "java.awt.*",
                },
            },
            configuration = {
                updateBuildConfiguration = "interactive",
            },
            referencesCodeLens = {
                enabled = true,
            },
            implementationsCodeLens = {
                enabled = true,
            },
        },
    },
}
