return {
    "mfussenegger/nvim-dap", 
    config = function(_, opts)
        local dap = require("dap")
        -- GO Debugger using Delve -- 
        dap.adapters.delve = function(callback, config)
            if config.mode == 'remote' and config.request == 'attach' then
                callback({
                    type = 'server',
                    host = config.host or '127.0.0.1',
                    port = config.port or '38697'
                })
            else
                callback({
                    type = 'server',
                    port = '${port}',
                    executable = {
                        command = 'dlv',
                        args = { 'dap', '-l', '127.0.0.1:${port}', '--log', '--log-output=dap' },
                        detached = vim.fn.has("win32") == 0,
                    }
                })
            end
        end


        -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
        dap.configurations.go = {
          {
            type = "delve",
            name = "Debug",
            request = "launch",
            program = "${file}"
          },
          {
            type = "delve",
            name = "Debug test", -- configuration for debugging test files
            request = "launch",
            mode = "test",
            program = "${file}"
          },
          -- works with go.mod packages and sub packages 
          {
            type = "delve",
            name = "Debug test (go.mod)",
            request = "launch",
            mode = "test",
            program = "./${relativeFileDirname}"
          } 
        }

        local widgets = require("dap.ui.widgets")
        vim.keymap.set("n", "<F5>", function() dap.continue() end)
        vim.keymap.set("n", "<F10>", function() dap.step_over() end)
        vim.keymap.set("n", "<F11>", function() dap.step_into() end)
        vim.keymap.set("n", "<F12>", function() dap.step_out() end)
        vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end)
        vim.keymap.set("n", "<Leader>B", function() dap.set_breakpoint() end)
        vim.keymap.set("n", "<Leader>lp", function() dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end)
        vim.keymap.set("n", "<Leader>dr", function() dap.repl.open() end)
        vim.keymap.set("n", "<Leader>dl", function() dap.run_last() end)
        vim.keymap.set({"n", "v"}, "<Leader>dh", function()
          widgets.hover()
        end)
        vim.keymap.set({"n", "v"}, "<Leader>dp", function()
          widgets.preview()
        end)
        vim.keymap.set("n", "<Leader>df", function()
          widgets.centered_float(widgets.frames)
        end)
        vim.keymap.set("n", "<Leader>ds", function()
          widgets.centered_float(widgets.scopes)
        end)

    end,
}
