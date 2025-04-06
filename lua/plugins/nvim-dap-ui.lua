return {
    "rcarriga/nvim-dap-ui",
    dependencies = { 
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio" 
    },
    init = function()
        local dap = require("dap")
        local ui = require("dapui")
        ui.setup({})
        vim.keymap.set("n", "<leader>du", ui.toggle, { desc = "Toggle debug UI" })

        dap.listeners.before.attach.dapui_config = function()
          ui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          ui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          ui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          ui.close()
        end
    end,
}
