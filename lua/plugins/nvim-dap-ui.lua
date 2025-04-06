return {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    init = function()
        local ui = require("dapui")
        ui.setup({})
        vim.keymap.set("n", "<leader>du", ui.toggle, { desc = "Toggle debug UI" })
    end
}
