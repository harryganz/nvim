-- Navigate between windows in terminal and normal mode using Alt-{direction}
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j", { noremap = true, desc = "Navigate to bottom window" })
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k", { noremap = true, desc = "Navigate to top window" })
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l", { noremap = true, desc = "Navigate to right window" })
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, desc = "Navigate to left window" })

-- Toggle nvim-tree shortcut
local nt = require("nvim-tree.api")
vim.keymap.set("n", "<leader>t", nt.tree.toggle, {desc = "Toggle Navigation"})

-- Debug operatrions
local dap = require("dap")
vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug continue" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug step over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug step into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug step out" })
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>d", dap.continue, { desc = "Start debugger" })

-- Toggle debug UI
local dapui = require("dapui")
vim.keymap.set("n", "\\d", dapui.toggle, { desc = "Toggle debug UI" })

-- Find files using telescope
local ts = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", ts.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ts.live_grep, { desc = "Search within files" })
vim.keymap.set("n", "<leader>fb", ts.buffers, { desc = "Search within buffers" })
vim.keymap.set("n", "<leader>fh", ts.help_tags, { desc = "Search for help tags" })


