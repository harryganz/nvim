return {
    "nvim-tree/nvim-tree.lua",
    opts = {},
    init = function()
        local api = require("nvim-tree.api")
        -- Toggle tree shortcut
        vim.keymap.set("n", "<leader>t", api.tree.toggle, {desc = "Toggle Navigation"})
    end,
}

