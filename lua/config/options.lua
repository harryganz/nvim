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


