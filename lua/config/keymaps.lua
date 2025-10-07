-- Map LSP actions
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", '<leader>a', vim.lsp.buf.code_action, { desc = "View Code Actions"})
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { desc = "Display information about current symbol"})

-- Plugin based window Navigation
local window = require("nvim-window")
vim.keymap.set("n", "<leader>w", window.pick, { desc = "Navigate betwewn windows" })

-- Toggle nvim-tree shortcut
local nt = require("nvim-tree.api")
vim.keymap.set("n", "<leader>t", nt.tree.toggle, {desc = "Toggle Navigation"})

-- Find files using telescope
local ts = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", ts.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ts.live_grep, { desc = "Search within files" })
vim.keymap.set("n", "<leader>fb", ts.buffers, { desc = "Search within buffers" })
vim.keymap.set("n", "<leader>fh", ts.help_tags, { desc = "Search for help tags" })

-- Toggle Terminal
vim.keymap.set("n", "<C-t>", "<Cmd>ToggleTerm<CR>", { desc = "Open Terminal" })

-- Git Integration
vim.keymap.set("n", "<leader>bl", "<Cmd>Git blame<CR>", { desc = "Toggle git Blame"})
vim.keymap.set("n", "<leader>mg", "<Cmd>Git mergetool<CR>", { desc = "Load git Mergetool into quick fix list"})

-- View Diagnostics/Symbols/Usages/QuickFixes
local trouble = require("trouble")
vim.keymap.set(
    "n", 
    "<leader>x", 
    function() 
        trouble.toggle({
            mode = "diagnostics",
            focus = false,
            filter = { buf = 0 },
        })
    end, 
    { desc = "Toggle diagnostics view"}
)
vim.keymap.set(
    "n",
    "<leader>u",
    function()
        trouble.toggle({
            mode = "lsp_references",
            focus = true,
        })
    end,
    { desc = "Toggle lsp references" }
)
vim.keymap.set(
    "n",
    "<leader>df",
    function()
        trouble.toggle({
            mode = "lsp_definitions",
            focus = false,
        })
    end,
    { desc = "Toggle lsp definitions" }
)
vim.keymap.set(
    "n",
    "<leader>qf",
    function()
        trouble.toggle({
            mode = "quickfix",
            focus = true,
            filter = { buf = 0 },
        })
    end,
    { desc = "Toggle quick fixes" }
)
