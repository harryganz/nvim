return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    init = function()
        local ts = require("telescope.builtin")
        vim.keymap.set("n", "ff", ts.find_files, { desc = "Find files" })
        vim.keymap.set("n", "fg", ts.live_grep, { desc = "Search within files" })
        vim.keymap.set("n", "fb", ts.buffers, { desc = "Search within buffers" })
        vim.keymap.set("n", "fh", ts.help_tags, { desc = "Search for help tags" })
    end,
}
