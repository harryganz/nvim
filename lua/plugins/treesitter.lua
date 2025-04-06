return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        -- Make sure the following parsers are installed
        ensure_installed = {"bash", "c", "css", "csv", "cue", "diff", "go", "haskell", "helm", "html", "java", "javadoc", "javascript", "jsdoc", "json", "kotlin", "liquid", "lua", "luadoc", "make", "markdown_inline", "nginx", "python", "r", "regex", "ruby", "scala", "scss", "sql", "terraform", "toml", "tsv", "typescript", "vim", "vimdoc", "xml", "yaml"},

        -- Automatically install any missing parsers when tering buffers
        auto_install = true,

        -- Enable syntax highlighting
        highlight = {
            enable = true,
        },

        -- Enable incremental selection based on scope(s)
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "vss",
                node_incremental = "vsl",
                scope_incremental = "vsi",
                node_decremental = "vsh",
            },
        }
    },
}
