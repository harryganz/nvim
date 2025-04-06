vim.opt.number = true  -- Show line numbers
vim.opt.relativenumber = true -- Show relative line nubmer

vim.opt.wrap = false -- Disable text wrapping

vim.opt.tabstop = 4 -- Amount of space for tab
vim.opt.shiftwidth = 4 -- Amount of space for indent
vim.opt.expandtab = true -- Use spaces instead of tabs

vim.opt.scrolloff = 999 -- Keep cursor in center of screen when scrolling (if possible)

vim.opt.termguicolors = true -- Use terminal GUI colors 

-- Share clipboard with system
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " " -- Use space character as "leader"
vim.g.maplocalleader = " "

-- Disable netrw (no idea what this is, but it must be disabled for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Toggle virtual text for diagnostics
vim.keymap.set('n', 'gK', function()
      local new_config = not vim.diagnostic.config().virtual_lines

      vim.diagnostic.config({ virtual_text = new_config })

    end,
    { desc = 'Toggle diagnostic virtual_text' }
)

-- Rename variable in buffer --
vim.keymap.set("n", "<A-r>", vim.lsp.buf.rename, { desc = "Rename symbol", noremap = true })

-- Open terminal below window
vim.keymap.set("n", "<C-t>", ":bo term <CR>", { desc = "Open terminal", noremap = true })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:q<CR>", { desc = "Close terminal" })

-- Navigate between windows in terminal and normal mode using Alt-{direction}
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j", { noremap = true, desc = "Navigate to bottom window" })
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k", { noremap = true, desc = "Navigate to top window" })
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l", { noremap = true, desc = "Navigate to right window" })
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, desc = "Navigate to left window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, desc = "Navigate to left window" })
