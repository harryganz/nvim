return {
    "nvim-tree/nvim-tree.lua",
    init = function()
        local api = require("nvim-tree.api")
        api.tree.toggle_gitignore_filter()
    end,
    config = true,
}

